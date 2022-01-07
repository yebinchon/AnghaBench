
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_GOODSIZE ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nf_tables_fill_gen_info (struct sk_buff*,struct net*,int ,int ) ;
 int nlmsg_unicast (struct sock*,struct sk_buff*,int ) ;

__attribute__((used)) static int nf_tables_getgen(struct net *net, struct sock *nlsk,
       struct sk_buff *skb, const struct nlmsghdr *nlh,
       const struct nlattr * const nla[],
       struct netlink_ext_ack *extack)
{
 struct sk_buff *skb2;
 int err;

 skb2 = alloc_skb(NLMSG_GOODSIZE, GFP_ATOMIC);
 if (skb2 == ((void*)0))
  return -ENOMEM;

 err = nf_tables_fill_gen_info(skb2, net, NETLINK_CB(skb).portid,
          nlh->nlmsg_seq);
 if (err < 0)
  goto err;

 return nlmsg_unicast(nlsk, skb2, NETLINK_CB(skb).portid);
err:
 kfree_skb(skb2);
 return err;
}
