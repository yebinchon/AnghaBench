
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int EINVAL ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int NLMSG_GOODSIZE ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;
 scalar_t__ tca_get_fill (struct sk_buff*,struct tc_action**,int ,int ,int ,int,int ,int) ;

__attribute__((used)) static int
tcf_get_notify(struct net *net, u32 portid, struct nlmsghdr *n,
        struct tc_action *actions[], int event,
        struct netlink_ext_ack *extack)
{
 struct sk_buff *skb;

 skb = alloc_skb(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!skb)
  return -ENOBUFS;
 if (tca_get_fill(skb, actions, portid, n->nlmsg_seq, 0, event,
    0, 1) <= 0) {
  NL_SET_ERR_MSG(extack, "Failed to fill netlink attributes while adding TC action");
  kfree_skb(skb);
  return -EINVAL;
 }

 return rtnl_unicast(skb, net, portid);
}
