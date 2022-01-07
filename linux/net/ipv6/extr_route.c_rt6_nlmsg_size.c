
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnexthop {int dummy; } ;
struct rtmsg {int dummy; } ;
struct rta_cacheinfo {int dummy; } ;
struct fib6_nh {int fib_nh_lws; } ;
struct fib6_info {int fib6_nsiblings; struct fib6_nh* fib6_nh; scalar_t__ nh; } ;


 int NLA_ALIGN (int) ;
 size_t NLMSG_ALIGN (int) ;
 int RTAX_MAX ;
 int TCP_CA_NAME_MAX ;
 int lwtunnel_get_encap_size (int ) ;
 int nexthop_for_each_fib6_nh (scalar_t__,int ,int*) ;
 int nla_total_size (int) ;
 int rt6_nh_nlmsg_size ;

__attribute__((used)) static size_t rt6_nlmsg_size(struct fib6_info *f6i)
{
 int nexthop_len;

 if (f6i->nh) {
  nexthop_len = nla_total_size(4);
  nexthop_for_each_fib6_nh(f6i->nh, rt6_nh_nlmsg_size,
      &nexthop_len);
 } else {
  struct fib6_nh *nh = f6i->fib6_nh;

  nexthop_len = 0;
  if (f6i->fib6_nsiblings) {
   nexthop_len = nla_total_size(0)
        + NLA_ALIGN(sizeof(struct rtnexthop))
        + nla_total_size(16)
        + lwtunnel_get_encap_size(nh->fib_nh_lws);

   nexthop_len *= f6i->fib6_nsiblings;
  }
  nexthop_len += lwtunnel_get_encap_size(nh->fib_nh_lws);
 }

 return NLMSG_ALIGN(sizeof(struct rtmsg))
        + nla_total_size(16)
        + nla_total_size(16)
        + nla_total_size(16)
        + nla_total_size(16)
        + nla_total_size(4)
        + nla_total_size(4)
        + nla_total_size(4)
        + nla_total_size(4)
        + RTAX_MAX * nla_total_size(4)
        + nla_total_size(sizeof(struct rta_cacheinfo))
        + nla_total_size(TCP_CA_NAME_MAX)
        + nla_total_size(1)
        + nexthop_len;
}
