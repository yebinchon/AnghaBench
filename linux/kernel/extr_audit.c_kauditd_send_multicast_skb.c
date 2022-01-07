
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;


 int AUDIT_NLGRP_READLOG ;
 int GFP_KERNEL ;
 struct sock* audit_get_sk (int *) ;
 int init_net ;
 int netlink_has_listeners (struct sock*,int ) ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;
 int nlmsg_multicast (struct sock*,struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;

__attribute__((used)) static void kauditd_send_multicast_skb(struct sk_buff *skb)
{
 struct sk_buff *copy;
 struct sock *sock = audit_get_sk(&init_net);
 struct nlmsghdr *nlh;




 if (!netlink_has_listeners(sock, AUDIT_NLGRP_READLOG))
  return;
 copy = skb_copy(skb, GFP_KERNEL);
 if (!copy)
  return;
 nlh = nlmsg_hdr(copy);
 nlh->nlmsg_len = skb->len;

 nlmsg_multicast(sock, copy, 0, AUDIT_NLGRP_READLOG, GFP_KERNEL);
}
