
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_policy_walk {int dummy; } ;
struct xfrm_dump_info {int nlmsg_flags; int nlmsg_seq; struct sk_buff* out_skb; int in_skb; } ;
struct sk_buff {int len; int sk; } ;
struct netlink_callback {TYPE_1__* nlh; int skb; scalar_t__ args; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int nlmsg_seq; } ;


 int NLM_F_MULTI ;
 int dump_one_policy ;
 struct net* sock_net (int ) ;
 int xfrm_policy_walk (struct net*,struct xfrm_policy_walk*,int ,struct xfrm_dump_info*) ;

__attribute__((used)) static int xfrm_dump_policy(struct sk_buff *skb, struct netlink_callback *cb)
{
 struct net *net = sock_net(skb->sk);
 struct xfrm_policy_walk *walk = (struct xfrm_policy_walk *)cb->args;
 struct xfrm_dump_info info;

 info.in_skb = cb->skb;
 info.out_skb = skb;
 info.nlmsg_seq = cb->nlh->nlmsg_seq;
 info.nlmsg_flags = NLM_F_MULTI;

 (void) xfrm_policy_walk(net, walk, dump_one_policy, &info);

 return skb->len;
}
