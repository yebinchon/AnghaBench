
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nexthop {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int ENOENT ;
 int GFP_KERNEL ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_GOODSIZE ;
 int RTM_NEWNEXTHOP ;
 int WARN_ON (int) ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct nexthop* nexthop_find_by_id (struct net*,int ) ;
 int nh_fill_node (struct sk_buff*,struct nexthop*,int ,int ,int ,int ) ;
 int nh_valid_get_del_req (struct nlmsghdr*,int *,struct netlink_ext_ack*) ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int rtm_get_nexthop(struct sk_buff *in_skb, struct nlmsghdr *nlh,
      struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(in_skb->sk);
 struct sk_buff *skb = ((void*)0);
 struct nexthop *nh;
 int err;
 u32 id;

 err = nh_valid_get_del_req(nlh, &id, extack);
 if (err)
  return err;

 err = -ENOBUFS;
 skb = alloc_skb(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!skb)
  goto out;

 err = -ENOENT;
 nh = nexthop_find_by_id(net, id);
 if (!nh)
  goto errout_free;

 err = nh_fill_node(skb, nh, RTM_NEWNEXTHOP, NETLINK_CB(in_skb).portid,
      nlh->nlmsg_seq, 0);
 if (err < 0) {
  WARN_ON(err == -EMSGSIZE);
  goto errout_free;
 }

 err = rtnl_unicast(skb, net, NETLINK_CB(in_skb).portid);
out:
 return err;
errout_free:
 kfree_skb(skb);
 goto out;
}
