
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_expr {int dummy; } ;


 scalar_t__ nf_tables_fill_expr_info (struct sk_buff*,struct nft_expr const*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,unsigned int) ;

int nft_expr_dump(struct sk_buff *skb, unsigned int attr,
    const struct nft_expr *expr)
{
 struct nlattr *nest;

 nest = nla_nest_start_noflag(skb, attr);
 if (!nest)
  goto nla_put_failure;
 if (nf_tables_fill_expr_info(skb, expr) < 0)
  goto nla_put_failure;
 nla_nest_end(skb, nest);
 return 0;

nla_put_failure:
 return -1;
}
