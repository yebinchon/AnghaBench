
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_nat {int family; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int net; } ;


 int nf_ct_netns_put (int ,int ) ;
 struct nft_nat* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void
nft_nat_destroy(const struct nft_ctx *ctx, const struct nft_expr *expr)
{
 const struct nft_nat *priv = nft_expr_priv(expr);

 nf_ct_netns_put(ctx->net, priv->family);
}
