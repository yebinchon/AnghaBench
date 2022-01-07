
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static int nfulnl_recv_unsupp(struct net *net, struct sock *ctnl,
         struct sk_buff *skb, const struct nlmsghdr *nlh,
         const struct nlattr * const nfqa[],
         struct netlink_ext_ack *extack)
{
 return -ENOTSUPP;
}
