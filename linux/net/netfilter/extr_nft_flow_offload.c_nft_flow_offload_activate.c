
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_flow_offload {TYPE_1__* flowtable; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;
struct TYPE_2__ {int use; } ;


 struct nft_flow_offload* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_flow_offload_activate(const struct nft_ctx *ctx,
          const struct nft_expr *expr)
{
 struct nft_flow_offload *priv = nft_expr_priv(expr);

 priv->flowtable->use++;
}
