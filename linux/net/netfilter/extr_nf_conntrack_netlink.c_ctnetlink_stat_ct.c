
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_type; int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int EAGAIN ;
 int ENOBUFS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MSG_DONTWAIT ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NFNL_MSG_TYPE (int ) ;
 int NLMSG_DEFAULT_SIZE ;
 int ctnetlink_stat_ct_fill_info (struct sk_buff*,int ,int ,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int netlink_unicast (struct sock*,struct sk_buff*,int ,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int sock_net (int ) ;

__attribute__((used)) static int ctnetlink_stat_ct(struct net *net, struct sock *ctnl,
        struct sk_buff *skb, const struct nlmsghdr *nlh,
        const struct nlattr * const cda[],
        struct netlink_ext_ack *extack)
{
 struct sk_buff *skb2;
 int err;

 skb2 = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (skb2 == ((void*)0))
  return -ENOMEM;

 err = ctnetlink_stat_ct_fill_info(skb2, NETLINK_CB(skb).portid,
       nlh->nlmsg_seq,
       NFNL_MSG_TYPE(nlh->nlmsg_type),
       sock_net(skb->sk));
 if (err <= 0)
  goto free;

 err = netlink_unicast(ctnl, skb2, NETLINK_CB(skb).portid, MSG_DONTWAIT);
 if (err < 0)
  goto out;

 return 0;

free:
 kfree_skb(skb2);
out:

 return err == -EAGAIN ? -ENOBUFS : err;
}
