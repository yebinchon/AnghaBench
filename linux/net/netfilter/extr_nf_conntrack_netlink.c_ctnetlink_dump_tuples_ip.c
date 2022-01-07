
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int l3num; } ;
struct nf_conntrack_tuple {TYPE_1__ src; } ;


 int CTA_TUPLE_IP ;


 int ipv4_tuple_to_nlattr (struct sk_buff*,struct nf_conntrack_tuple const*) ;
 int ipv6_tuple_to_nlattr (struct sk_buff*,struct nf_conntrack_tuple const*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;

__attribute__((used)) static int ctnetlink_dump_tuples_ip(struct sk_buff *skb,
        const struct nf_conntrack_tuple *tuple)
{
 int ret = 0;
 struct nlattr *nest_parms;

 nest_parms = nla_nest_start(skb, CTA_TUPLE_IP);
 if (!nest_parms)
  goto nla_put_failure;

 switch (tuple->src.l3num) {
 case 129:
  ret = ipv4_tuple_to_nlattr(skb, tuple);
  break;
 case 128:
  ret = ipv6_tuple_to_nlattr(skb, tuple);
  break;
 }

 nla_nest_end(skb, nest_parms);

 return ret;

nla_put_failure:
 return -1;
}
