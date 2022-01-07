
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int fib_has_custom_local_routes; } ;
struct net {TYPE_1__ ipv4; } ;
struct fib_table {int dummy; } ;
struct fib_config {scalar_t__ fc_type; int fc_table; } ;


 int ENOBUFS ;
 scalar_t__ RTN_LOCAL ;
 struct fib_table* fib_new_table (struct net*,int ) ;
 int fib_table_insert (struct net*,struct fib_table*,struct fib_config*,struct netlink_ext_ack*) ;
 int rtm_to_fib_config (struct net*,struct sk_buff*,struct nlmsghdr*,struct fib_config*,struct netlink_ext_ack*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int inet_rtm_newroute(struct sk_buff *skb, struct nlmsghdr *nlh,
        struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(skb->sk);
 struct fib_config cfg;
 struct fib_table *tb;
 int err;

 err = rtm_to_fib_config(net, skb, nlh, &cfg, extack);
 if (err < 0)
  goto errout;

 tb = fib_new_table(net, cfg.fc_table);
 if (!tb) {
  err = -ENOBUFS;
  goto errout;
 }

 err = fib_table_insert(net, tb, &cfg, extack);
 if (!err && cfg.fc_type == RTN_LOCAL)
  net->ipv4.fib_has_custom_local_routes = 1;
errout:
 return err;
}
