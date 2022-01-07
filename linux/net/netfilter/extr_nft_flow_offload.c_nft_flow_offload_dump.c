
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nft_flow_offload {TYPE_1__* flowtable; } ;
struct nft_expr {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int NFTA_FLOW_TABLE_NAME ;
 struct nft_flow_offload* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_flow_offload_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 struct nft_flow_offload *priv = nft_expr_priv(expr);

 if (nla_put_string(skb, NFTA_FLOW_TABLE_NAME, priv->flowtable->name))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -1;
}
