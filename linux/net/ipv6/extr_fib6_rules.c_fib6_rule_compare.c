
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct fib_rule_hdr {scalar_t__ src_len; scalar_t__ dst_len; scalar_t__ tos; } ;
struct fib_rule {int dummy; } ;
struct TYPE_4__ {scalar_t__ plen; int addr; } ;
struct TYPE_3__ {scalar_t__ plen; int addr; } ;
struct fib6_rule {scalar_t__ tclass; TYPE_2__ dst; TYPE_1__ src; } ;


 size_t FRA_DST ;
 size_t FRA_SRC ;
 scalar_t__ nla_memcmp (struct nlattr*,int *,int) ;

__attribute__((used)) static int fib6_rule_compare(struct fib_rule *rule, struct fib_rule_hdr *frh,
        struct nlattr **tb)
{
 struct fib6_rule *rule6 = (struct fib6_rule *) rule;

 if (frh->src_len && (rule6->src.plen != frh->src_len))
  return 0;

 if (frh->dst_len && (rule6->dst.plen != frh->dst_len))
  return 0;

 if (frh->tos && (rule6->tclass != frh->tos))
  return 0;

 if (frh->src_len &&
     nla_memcmp(tb[FRA_SRC], &rule6->src.addr, sizeof(struct in6_addr)))
  return 0;

 if (frh->dst_len &&
     nla_memcmp(tb[FRA_DST], &rule6->dst.addr, sizeof(struct in6_addr)))
  return 0;

 return 1;
}
