
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;
struct nft_connlimit {int list; } ;


 int nf_conncount_cache_free (int *) ;
 struct nft_connlimit* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_connlimit_destroy_clone(const struct nft_ctx *ctx,
     const struct nft_expr *expr)
{
 struct nft_connlimit *priv = nft_expr_priv(expr);

 nf_conncount_cache_free(&priv->list);
}
