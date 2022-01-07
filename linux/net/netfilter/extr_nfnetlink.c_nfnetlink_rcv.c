
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; scalar_t__ nlmsg_type; } ;


 int CAP_NET_ADMIN ;
 int EPERM ;
 scalar_t__ NFNL_MSG_BATCH_BEGIN ;
 scalar_t__ NLMSG_HDRLEN ;
 int netlink_ack (struct sk_buff*,struct nlmsghdr*,int ,int *) ;
 int netlink_net_capable (struct sk_buff*,int ) ;
 int netlink_rcv_skb (struct sk_buff*,int ) ;
 int nfnetlink_rcv_msg ;
 int nfnetlink_rcv_skb_batch (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;

__attribute__((used)) static void nfnetlink_rcv(struct sk_buff *skb)
{
 struct nlmsghdr *nlh = nlmsg_hdr(skb);

 if (skb->len < NLMSG_HDRLEN ||
     nlh->nlmsg_len < NLMSG_HDRLEN ||
     skb->len < nlh->nlmsg_len)
  return;

 if (!netlink_net_capable(skb, CAP_NET_ADMIN)) {
  netlink_ack(skb, nlh, -EPERM, ((void*)0));
  return;
 }

 if (nlh->nlmsg_type == NFNL_MSG_BATCH_BEGIN)
  nfnetlink_rcv_skb_batch(skb, nlh);
 else
  netlink_rcv_skb(skb, nfnetlink_rcv_msg);
}
