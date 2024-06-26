{**
 * Copyright (C) 2017-2024 thirty bees
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@thirtybees.com so we can send you a copy immediately.
 *
 * @author    thirty bees <modules@thirtybees.com>
 * @copyright 2017-2024 thirty bees
 * @license   Academic Free License (AFL 3.0)
 *}

{if !empty($beesblogPopularPostsPosts)}
    <section class="block">
        <div class="col-xs-12 col-sm-12">
            <div id="beesblog_column">
                <h2 class="title_block">
                    <a href="{$beesblogPopularPostsBlogUrl|escape:'htmlall':'UTF-8'}" title="{l s='Popular posts' mod='beesblogpopularposts'}">{l s='Popular posts' mod='beesblogpopularposts'}</a>
                </h2>
            </div>
            <div class="row">
                {foreach $beesblogPopularPostsPosts as $post}
                    <article>
                        <div class="col-xs-12 col-sm-4 col-md-3">
                            <div class="beesblogpopularposts-content">
                                <h3 class="post-name">
                                    <a class="beesblogpopularposts-title" href="{$post->link|escape:'htmlall':'UTF-8'}" title="{$post->title|escape:'htmlall':'UTF-8'}">
                                        {assign var=imagePath value=Media::getMediaPath(BeesBlog::getPostImagePath($post->id))}
                                        {if ($imagePath)}
                                            <img class="img-responsive" src="{$imagePath|escape:'htmlall':'UTF-8'}" title="{$post->title|escape:'htmlall':'UTF-8'}" />
                                        {/if}
                                        {$post->title|escape:'htmlall':'UTF-8'}
                                    </a>
                                </h3>
                                <p>{$post->content|truncate:'150'|strip_tags}</p>
                                <p>
                                    <i class="icon icon-calendar"></i> {$post->published|date_format}
                                    <i class="icon icon-eye"></i> {$post->viewed|intval}
                                </p>
                                <p><a class="btn btn-primary" href="{$post->link|escape:'htmlall':'UTF-8'}" title="{$post->title|escape:'htmlall':'UTF-8'}">{l s='Read More' mod='beesblogpopularposts'}</a></p>
                            </div>
                        </div>
                    </article>
                {/foreach}
            </div>
        </div>
    </section>
{/if}
