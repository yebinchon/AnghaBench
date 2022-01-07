
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct rtgenmsg {int rtgen_family; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct mr_table {int net; } ;
struct TYPE_4__ {int s_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct igmpmsg {TYPE_2__ im_dst; TYPE_1__ im_src; int im_vif; int im_msgtype; } ;


 int ENOBUFS ;
 int GFP_ATOMIC ;
 int IPMRA_CREPORT_DST_ADDR ;
 int IPMRA_CREPORT_MSGTYPE ;
 int IPMRA_CREPORT_PKT ;
 int IPMRA_CREPORT_SRC_ADDR ;
 int IPMRA_CREPORT_VIF_ID ;
 int RTM_NEWCACHEREPORT ;
 int RTNLGRP_IPV4_MROUTE_R ;
 int RTNL_FAMILY_IPMR ;
 int igmpmsg_netlink_msgsize (int) ;
 int kfree_skb (struct sk_buff*) ;
 int nla_data (struct nlattr*) ;
 scalar_t__ nla_put_in_addr (struct sk_buff*,int ,int ) ;
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
 scalar_t__ skb_network_header (struct sk_buff*) ;

__attribute__((used)) static void igmpmsg_netlink_event(struct mr_table *mrt, struct sk_buff *pkt)
{
 struct net *net = read_pnet(&mrt->net);
 struct nlmsghdr *nlh;
 struct rtgenmsg *rtgenm;
 struct igmpmsg *msg;
 struct sk_buff *skb;
 struct nlattr *nla;
 int payloadlen;

 payloadlen = pkt->len - sizeof(struct igmpmsg);
 msg = (struct igmpmsg *)skb_network_header(pkt);

 skb = nlmsg_new(igmpmsg_netlink_msgsize(payloadlen), GFP_ATOMIC);
 if (!skb)
  goto errout;

 nlh = nlmsg_put(skb, 0, 0, RTM_NEWCACHEREPORT,
   sizeof(struct rtgenmsg), 0);
 if (!nlh)
  goto errout;
 rtgenm = nlmsg_data(nlh);
 rtgenm->rtgen_family = RTNL_FAMILY_IPMR;
 if (nla_put_u8(skb, IPMRA_CREPORT_MSGTYPE, msg->im_msgtype) ||
     nla_put_u32(skb, IPMRA_CREPORT_VIF_ID, msg->im_vif) ||
     nla_put_in_addr(skb, IPMRA_CREPORT_SRC_ADDR,
       msg->im_src.s_addr) ||
     nla_put_in_addr(skb, IPMRA_CREPORT_DST_ADDR,
       msg->im_dst.s_addr))
  goto nla_put_failure;

 nla = nla_reserve(skb, IPMRA_CREPORT_PKT, payloadlen);
 if (!nla || skb_copy_bits(pkt, sizeof(struct igmpmsg),
      nla_data(nla), payloadlen))
  goto nla_put_failure;

 nlmsg_end(skb, nlh);

 rtnl_notify(skb, net, 0, RTNLGRP_IPV4_MROUTE_R, ((void*)0), GFP_ATOMIC);
 return;

nla_put_failure:
 nlmsg_cancel(skb, nlh);
errout:
 kfree_skb(skb);
 rtnl_set_sk_err(net, RTNLGRP_IPV4_MROUTE_R, -ENOBUFS);
}
