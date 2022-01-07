
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct fib_rule_hdr {int tos; scalar_t__ src_len; scalar_t__ dst_len; } ;
struct fib_rule {int dummy; } ;
struct TYPE_3__ {int addr; scalar_t__ plen; } ;
struct TYPE_4__ {int addr; scalar_t__ plen; } ;
struct fib6_rule {TYPE_1__ src; TYPE_2__ dst; int tclass; } ;


 int ENOBUFS ;
 int FRA_DST ;
 int FRA_SRC ;
 scalar_t__ nla_put_in6_addr (struct sk_buff*,int ,int *) ;

__attribute__((used)) static int fib6_rule_fill(struct fib_rule *rule, struct sk_buff *skb,
     struct fib_rule_hdr *frh)
{
 struct fib6_rule *rule6 = (struct fib6_rule *) rule;

 frh->dst_len = rule6->dst.plen;
 frh->src_len = rule6->src.plen;
 frh->tos = rule6->tclass;

 if ((rule6->dst.plen &&
      nla_put_in6_addr(skb, FRA_DST, &rule6->dst.addr)) ||
     (rule6->src.plen &&
      nla_put_in6_addr(skb, FRA_SRC, &rule6->src.addr)))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -ENOBUFS;
}
