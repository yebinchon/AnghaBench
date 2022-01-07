
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfrm_address_t ;
struct TYPE_2__ {scalar_t__ proto; } ;
struct xfrm_state {int encap; TYPE_1__ id; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
typedef int __be16 ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IPPROTO_ESP ;
 int XFRMNLGRP_MAPPING ;
 int build_mapping (struct sk_buff*,struct xfrm_state*,int *,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int xfrm_mapping_msgsize () ;
 int xfrm_nlmsg_multicast (struct net*,struct sk_buff*,int ,int ) ;
 struct net* xs_net (struct xfrm_state*) ;

__attribute__((used)) static int xfrm_send_mapping(struct xfrm_state *x, xfrm_address_t *ipaddr,
        __be16 sport)
{
 struct net *net = xs_net(x);
 struct sk_buff *skb;
 int err;

 if (x->id.proto != IPPROTO_ESP)
  return -EINVAL;

 if (!x->encap)
  return -EINVAL;

 skb = nlmsg_new(xfrm_mapping_msgsize(), GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 err = build_mapping(skb, x, ipaddr, sport);
 BUG_ON(err < 0);

 return xfrm_nlmsg_multicast(net, skb, 0, XFRMNLGRP_MAPPING);
}
