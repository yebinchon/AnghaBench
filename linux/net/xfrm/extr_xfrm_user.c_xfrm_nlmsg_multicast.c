
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int nlsk; } ;
struct net {TYPE_1__ xfrm; } ;


 int EPIPE ;
 int GFP_ATOMIC ;
 int kfree_skb (struct sk_buff*) ;
 int nlmsg_multicast (struct sock*,struct sk_buff*,int ,unsigned int,int ) ;
 struct sock* rcu_dereference (int ) ;

__attribute__((used)) static inline int xfrm_nlmsg_multicast(struct net *net, struct sk_buff *skb,
           u32 pid, unsigned int group)
{
 struct sock *nlsk = rcu_dereference(net->xfrm.nlsk);

 if (!nlsk) {
  kfree_skb(skb);
  return -EPIPE;
 }

 return nlmsg_multicast(nlsk, skb, pid, group, GFP_ATOMIC);
}
