
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nft_objref_map {TYPE_1__* set; int sreg; } ;
struct nft_expr {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int NFTA_OBJREF_SET_NAME ;
 int NFTA_OBJREF_SET_SREG ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_objref_map* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_objref_map_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_objref_map *priv = nft_expr_priv(expr);

 if (nft_dump_register(skb, NFTA_OBJREF_SET_SREG, priv->sreg) ||
     nla_put_string(skb, NFTA_OBJREF_SET_NAME, priv->set->name))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -1;
}
