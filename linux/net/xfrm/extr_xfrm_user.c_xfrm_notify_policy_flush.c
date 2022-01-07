
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct km_event {TYPE_1__ data; int seq; int portid; struct net* net; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int XFRMNLGRP_POLICY ;
 int XFRM_MSG_FLUSHPOLICY ;
 int copy_to_user_policy_type (int ,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int ,int ) ;
 int userpolicy_type_attrsize () ;
 int xfrm_nlmsg_multicast (struct net*,struct sk_buff*,int ,int ) ;

__attribute__((used)) static int xfrm_notify_policy_flush(const struct km_event *c)
{
 struct net *net = c->net;
 struct nlmsghdr *nlh;
 struct sk_buff *skb;
 int err;

 skb = nlmsg_new(userpolicy_type_attrsize(), GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 nlh = nlmsg_put(skb, c->portid, c->seq, XFRM_MSG_FLUSHPOLICY, 0, 0);
 err = -EMSGSIZE;
 if (nlh == ((void*)0))
  goto out_free_skb;
 err = copy_to_user_policy_type(c->data.type, skb);
 if (err)
  goto out_free_skb;

 nlmsg_end(skb, nlh);

 return xfrm_nlmsg_multicast(net, skb, 0, XFRMNLGRP_POLICY);

out_free_skb:
 kfree_skb(skb);
 return err;
}
