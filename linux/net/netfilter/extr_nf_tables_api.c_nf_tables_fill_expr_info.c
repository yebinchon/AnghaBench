
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct nft_expr {TYPE_2__* ops; } ;
struct TYPE_4__ {scalar_t__ (* dump ) (struct sk_buff*,struct nft_expr const*) ;TYPE_1__* type; } ;
struct TYPE_3__ {int name; } ;


 int NFTA_EXPR_DATA ;
 int NFTA_EXPR_NAME ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ stub1 (struct sk_buff*,struct nft_expr const*) ;

__attribute__((used)) static int nf_tables_fill_expr_info(struct sk_buff *skb,
        const struct nft_expr *expr)
{
 if (nla_put_string(skb, NFTA_EXPR_NAME, expr->ops->type->name))
  goto nla_put_failure;

 if (expr->ops->dump) {
  struct nlattr *data = nla_nest_start_noflag(skb,
           NFTA_EXPR_DATA);
  if (data == ((void*)0))
   goto nla_put_failure;
  if (expr->ops->dump(skb, expr) < 0)
   goto nla_put_failure;
  nla_nest_end(skb, data);
 }

 return skb->len;

nla_put_failure:
 return -1;
}
