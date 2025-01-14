
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct km_event {int dummy; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int XFRMNLGRP_EXPIRE ;
 scalar_t__ build_expire (struct sk_buff*,struct xfrm_state*,struct km_event const*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int xfrm_expire_msgsize () ;
 int xfrm_nlmsg_multicast (struct net*,struct sk_buff*,int ,int ) ;
 struct net* xs_net (struct xfrm_state*) ;

__attribute__((used)) static int xfrm_exp_state_notify(struct xfrm_state *x, const struct km_event *c)
{
 struct net *net = xs_net(x);
 struct sk_buff *skb;

 skb = nlmsg_new(xfrm_expire_msgsize(), GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 if (build_expire(skb, x, c) < 0) {
  kfree_skb(skb);
  return -EMSGSIZE;
 }

 return xfrm_nlmsg_multicast(net, skb, 0, XFRMNLGRP_EXPIRE);
}
