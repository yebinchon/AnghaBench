
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct fib6_config {scalar_t__ fc_metric; scalar_t__ fc_mp; } ;


 int GFP_KERNEL ;
 scalar_t__ IP6_RT_PRIO_USER ;
 int ip6_route_add (struct fib6_config*,int ,struct netlink_ext_ack*) ;
 int ip6_route_multipath_add (struct fib6_config*,struct netlink_ext_ack*) ;
 int rtm_to_fib6_config (struct sk_buff*,struct nlmsghdr*,struct fib6_config*,struct netlink_ext_ack*) ;

__attribute__((used)) static int inet6_rtm_newroute(struct sk_buff *skb, struct nlmsghdr *nlh,
         struct netlink_ext_ack *extack)
{
 struct fib6_config cfg;
 int err;

 err = rtm_to_fib6_config(skb, nlh, &cfg, extack);
 if (err < 0)
  return err;

 if (cfg.fc_metric == 0)
  cfg.fc_metric = IP6_RT_PRIO_USER;

 if (cfg.fc_mp)
  return ip6_route_multipath_add(&cfg, extack);
 else
  return ip6_route_add(&cfg, GFP_KERNEL, extack);
}
