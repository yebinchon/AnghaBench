
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_meta {scalar_t__ key; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 scalar_t__ NFT_META_NFTRACE ;
 struct nft_meta* nft_expr_priv (struct nft_expr const*) ;
 int nft_trace_enabled ;
 int static_branch_dec (int *) ;

void nft_meta_set_destroy(const struct nft_ctx *ctx,
     const struct nft_expr *expr)
{
 const struct nft_meta *priv = nft_expr_priv(expr);

 if (priv->key == NFT_META_NFTRACE)
  static_branch_dec(&nft_trace_enabled);
}
