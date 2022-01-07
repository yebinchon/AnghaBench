
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnexthop {int dummy; } ;
struct fib6_nh {scalar_t__ fib_nh_lws; } ;


 scalar_t__ NLA_ALIGN (int) ;
 scalar_t__ lwtunnel_get_encap_size (scalar_t__) ;
 scalar_t__ nla_total_size (int) ;

__attribute__((used)) static int rt6_nh_nlmsg_size(struct fib6_nh *nh, void *arg)
{
 int *nexthop_len = arg;

 *nexthop_len += nla_total_size(0)
       + NLA_ALIGN(sizeof(struct rtnexthop))
       + nla_total_size(16);

 if (nh->fib_nh_lws) {

  *nexthop_len += lwtunnel_get_encap_size(nh->fib_nh_lws);

  *nexthop_len += nla_total_size(2);
 }

 return 0;
}
