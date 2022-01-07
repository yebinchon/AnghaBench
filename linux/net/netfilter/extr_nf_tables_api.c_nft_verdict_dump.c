
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_verdict {int code; TYPE_1__* chain; } ;
struct TYPE_2__ {int name; } ;


 int NFTA_VERDICT_CHAIN ;
 int NFTA_VERDICT_CODE ;


 int htonl (int) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 int nla_put_string (struct sk_buff*,int ,int ) ;

int nft_verdict_dump(struct sk_buff *skb, int type, const struct nft_verdict *v)
{
 struct nlattr *nest;

 nest = nla_nest_start_noflag(skb, type);
 if (!nest)
  goto nla_put_failure;

 if (nla_put_be32(skb, NFTA_VERDICT_CODE, htonl(v->code)))
  goto nla_put_failure;

 switch (v->code) {
 case 128:
 case 129:
  if (nla_put_string(skb, NFTA_VERDICT_CHAIN,
       v->chain->name))
   goto nla_put_failure;
 }
 nla_nest_end(skb, nest);
 return 0;

nla_put_failure:
 return -1;
}
