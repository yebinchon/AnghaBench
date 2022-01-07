
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct rtgenmsg {int rtgen_family; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct mrt6msg {int im6_dst; int im6_src; int im6_mif; int im6_msgtype; } ;
struct mr_table {int net; } ;


 int ENOBUFS ;
 int GFP_ATOMIC ;
 int IP6MRA_CREPORT_DST_ADDR ;
 int IP6MRA_CREPORT_MIF_ID ;
 int IP6MRA_CREPORT_MSGTYPE ;
 int IP6MRA_CREPORT_PKT ;
 int IP6MRA_CREPORT_SRC_ADDR ;
 int RTM_NEWCACHEREPORT ;
 int RTNLGRP_IPV6_MROUTE_R ;
 int RTNL_FAMILY_IP6MR ;
 int kfree_skb (struct sk_buff*) ;
 int mrt6msg_netlink_msgsize (int) ;
 int nla_data (struct nlattr*) ;
 scalar_t__ nla_put_in6_addr (struct sk_buff*,int ,int *) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct rtgenmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 struct net* read_pnet (int *) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int ) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int,int ,int) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static void mrt6msg_netlink_event(struct mr_table *mrt, struct sk_buff *pkt)
{
 struct net *net = read_pnet(&mrt->net);
 struct nlmsghdr *nlh;
 struct rtgenmsg *rtgenm;
 struct mrt6msg *msg;
 struct sk_buff *skb;
 struct nlattr *nla;
 int payloadlen;

 payloadlen = pkt->len - sizeof(struct mrt6msg);
 msg = (struct mrt6msg *)skb_transport_header(pkt);

 skb = nlmsg_new(mrt6msg_netlink_msgsize(payloadlen), GFP_ATOMIC);
 if (!skb)
  goto errout;

 nlh = nlmsg_put(skb, 0, 0, RTM_NEWCACHEREPORT,
   sizeof(struct rtgenmsg), 0);
 if (!nlh)
  goto errout;
 rtgenm = nlmsg_data(nlh);
 rtgenm->rtgen_family = RTNL_FAMILY_IP6MR;
 if (nla_put_u8(skb, IP6MRA_CREPORT_MSGTYPE, msg->im6_msgtype) ||
     nla_put_u32(skb, IP6MRA_CREPORT_MIF_ID, msg->im6_mif) ||
     nla_put_in6_addr(skb, IP6MRA_CREPORT_SRC_ADDR,
        &msg->im6_src) ||
     nla_put_in6_addr(skb, IP6MRA_CREPORT_DST_ADDR,
        &msg->im6_dst))
  goto nla_put_failure;

 nla = nla_reserve(skb, IP6MRA_CREPORT_PKT, payloadlen);
 if (!nla || skb_copy_bits(pkt, sizeof(struct mrt6msg),
      nla_data(nla), payloadlen))
  goto nla_put_failure;

 nlmsg_end(skb, nlh);

 rtnl_notify(skb, net, 0, RTNLGRP_IPV6_MROUTE_R, ((void*)0), GFP_ATOMIC);
 return;

nla_put_failure:
 nlmsg_cancel(skb, nlh);
errout:
 kfree_skb(skb);
 rtnl_set_sk_err(net, RTNLGRP_IPV6_MROUTE_R, -ENOBUFS);
}
