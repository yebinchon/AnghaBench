
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_ctx {int family; int net; } ;
struct nft_connlimit {int list; } ;


 int nf_conncount_cache_free (int *) ;
 int nf_ct_netns_put (int ,int ) ;

__attribute__((used)) static void nft_connlimit_do_destroy(const struct nft_ctx *ctx,
         struct nft_connlimit *priv)
{
 nf_ct_netns_put(ctx->net, ctx->family);
 nf_conncount_cache_free(&priv->list);
}
