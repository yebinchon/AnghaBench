
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nlattr {int dummy; } ;
struct nft_flowtable {int use; } ;
struct nft_flow_offload {struct nft_flowtable* flowtable; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int family; int net; int table; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct nft_flowtable*) ;
 size_t NFTA_FLOW_TABLE_NAME ;
 int PTR_ERR (struct nft_flowtable*) ;
 int nf_ct_netns_get (int ,int ) ;
 struct nft_flow_offload* nft_expr_priv (struct nft_expr const*) ;
 struct nft_flowtable* nft_flowtable_lookup (int ,struct nlattr const* const,int ) ;
 int nft_genmask_next (int ) ;

__attribute__((used)) static int nft_flow_offload_init(const struct nft_ctx *ctx,
     const struct nft_expr *expr,
     const struct nlattr * const tb[])
{
 struct nft_flow_offload *priv = nft_expr_priv(expr);
 u8 genmask = nft_genmask_next(ctx->net);
 struct nft_flowtable *flowtable;

 if (!tb[NFTA_FLOW_TABLE_NAME])
  return -EINVAL;

 flowtable = nft_flowtable_lookup(ctx->table, tb[NFTA_FLOW_TABLE_NAME],
      genmask);
 if (IS_ERR(flowtable))
  return PTR_ERR(flowtable);

 priv->flowtable = flowtable;
 flowtable->use++;

 return nf_ct_netns_get(ctx->net, ctx->family);
}
