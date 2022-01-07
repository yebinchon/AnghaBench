
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u8 ;
struct xfrm_selector {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int XFRMNLGRP_REPORT ;
 int build_report (struct sk_buff*,int ,struct xfrm_selector*,int *) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int xfrm_nlmsg_multicast (struct net*,struct sk_buff*,int ,int ) ;
 int xfrm_report_msgsize () ;

__attribute__((used)) static int xfrm_send_report(struct net *net, u8 proto,
       struct xfrm_selector *sel, xfrm_address_t *addr)
{
 struct sk_buff *skb;
 int err;

 skb = nlmsg_new(xfrm_report_msgsize(), GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 err = build_report(skb, proto, sel, addr);
 BUG_ON(err < 0);

 return xfrm_nlmsg_multicast(net, skb, 0, XFRMNLGRP_REPORT);
}
