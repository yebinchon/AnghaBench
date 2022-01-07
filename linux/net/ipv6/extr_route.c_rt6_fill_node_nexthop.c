
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nexthop {int dummy; } ;
struct fib6_nh {int nh_common; } ;


 int AF_INET6 ;
 int EMSGSIZE ;
 int RTA_MULTIPATH ;
 scalar_t__ fib_nexthop_info (struct sk_buff*,int *,int ,unsigned char*,int) ;
 struct fib6_nh* nexthop_fib6_nh (struct nexthop*) ;
 scalar_t__ nexthop_is_multipath (struct nexthop*) ;
 scalar_t__ nexthop_mpath_fill_node (struct sk_buff*,struct nexthop*,int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;

__attribute__((used)) static int rt6_fill_node_nexthop(struct sk_buff *skb, struct nexthop *nh,
     unsigned char *flags)
{
 if (nexthop_is_multipath(nh)) {
  struct nlattr *mp;

  mp = nla_nest_start_noflag(skb, RTA_MULTIPATH);
  if (!mp)
   goto nla_put_failure;

  if (nexthop_mpath_fill_node(skb, nh, AF_INET6))
   goto nla_put_failure;

  nla_nest_end(skb, mp);
 } else {
  struct fib6_nh *fib6_nh;

  fib6_nh = nexthop_fib6_nh(nh);
  if (fib_nexthop_info(skb, &fib6_nh->nh_common, AF_INET6,
         flags, 0) < 0)
   goto nla_put_failure;
 }

 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
