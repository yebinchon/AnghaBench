
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int nlsk; } ;
struct net {TYPE_1__ xfrm; } ;
struct TYPE_4__ {int portid; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 TYPE_2__ NETLINK_CB (struct sk_buff*) ;
 int build_sadinfo (struct sk_buff*,struct net*,int ,int ,int ) ;
 int * nlmsg_data (struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int nlmsg_unicast (int ,struct sk_buff*,int ) ;
 struct net* sock_net (int ) ;
 int xfrm_sadinfo_msgsize () ;

__attribute__((used)) static int xfrm_get_sadinfo(struct sk_buff *skb, struct nlmsghdr *nlh,
  struct nlattr **attrs)
{
 struct net *net = sock_net(skb->sk);
 struct sk_buff *r_skb;
 u32 *flags = nlmsg_data(nlh);
 u32 sportid = NETLINK_CB(skb).portid;
 u32 seq = nlh->nlmsg_seq;
 int err;

 r_skb = nlmsg_new(xfrm_sadinfo_msgsize(), GFP_ATOMIC);
 if (r_skb == ((void*)0))
  return -ENOMEM;

 err = build_sadinfo(r_skb, net, sportid, seq, *flags);
 BUG_ON(err < 0);

 return nlmsg_unicast(net->xfrm.nlsk, r_skb, sportid);
}
