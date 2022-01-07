
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct fib6_config {int fc_delete_all_nh; scalar_t__ fc_mp; scalar_t__ fc_nh_id; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int ip6_route_del (struct fib6_config*,struct netlink_ext_ack*) ;
 int ip6_route_multipath_del (struct fib6_config*,struct netlink_ext_ack*) ;
 int nexthop_find_by_id (int ,scalar_t__) ;
 int rtm_to_fib6_config (struct sk_buff*,struct nlmsghdr*,struct fib6_config*,struct netlink_ext_ack*) ;
 int sock_net (int ) ;

__attribute__((used)) static int inet6_rtm_delroute(struct sk_buff *skb, struct nlmsghdr *nlh,
         struct netlink_ext_ack *extack)
{
 struct fib6_config cfg;
 int err;

 err = rtm_to_fib6_config(skb, nlh, &cfg, extack);
 if (err < 0)
  return err;

 if (cfg.fc_nh_id &&
     !nexthop_find_by_id(sock_net(skb->sk), cfg.fc_nh_id)) {
  NL_SET_ERR_MSG(extack, "Nexthop id does not exist");
  return -EINVAL;
 }

 if (cfg.fc_mp)
  return ip6_route_multipath_del(&cfg, extack);
 else {
  cfg.fc_delete_all_nh = 1;
  return ip6_route_del(&cfg, extack);
 }
}
