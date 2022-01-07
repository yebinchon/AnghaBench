
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_expr {int dummy; } ;
struct nft_dynset {int set; int * expr; } ;
struct nft_ctx {int dummy; } ;


 int nf_tables_destroy_set (struct nft_ctx const*,int ) ;
 int nft_expr_destroy (struct nft_ctx const*,int *) ;
 struct nft_dynset* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_dynset_destroy(const struct nft_ctx *ctx,
          const struct nft_expr *expr)
{
 struct nft_dynset *priv = nft_expr_priv(expr);

 if (priv->expr != ((void*)0))
  nft_expr_destroy(ctx, priv->expr);

 nf_tables_destroy_set(ctx, priv->set);
}
