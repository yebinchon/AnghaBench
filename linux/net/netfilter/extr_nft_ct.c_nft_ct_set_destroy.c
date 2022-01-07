
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_expr {int dummy; } ;
struct nft_ctx {int family; int net; } ;
struct nft_ct {int dummy; } ;


 int __nft_ct_set_destroy (struct nft_ctx const*,struct nft_ct*) ;
 int nf_ct_netns_put (int ,int ) ;
 struct nft_ct* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_ct_set_destroy(const struct nft_ctx *ctx,
          const struct nft_expr *expr)
{
 struct nft_ct *priv = nft_expr_priv(expr);

 __nft_ct_set_destroy(ctx, priv);
 nf_ct_netns_put(ctx->net, ctx->family);
}
