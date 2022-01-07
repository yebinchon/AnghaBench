
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nft_traceinfo {int type; int packet_dumped; TYPE_5__* basechain; TYPE_7__* verdict; TYPE_4__* chain; struct nft_pktinfo* pkt; } ;
struct nft_pktinfo {TYPE_6__* skb; } ;
struct nfgenmsg {scalar_t__ res_id; int version; int nfgen_family; } ;
typedef int __be64 ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_14__ {TYPE_1__* chain; } ;
struct TYPE_13__ {int mark; } ;
struct TYPE_12__ {int policy; TYPE_2__* type; } ;
struct TYPE_11__ {TYPE_3__* table; int name; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {int family; } ;
struct TYPE_8__ {int name; } ;


 int GFP_ATOMIC ;
 int NFNETLINK_V0 ;
 int NFNLGRP_NFTRACE ;
 int NFNL_SUBSYS_NFTABLES ;
 int NFTA_TRACE_CHAIN ;
 int NFTA_TRACE_MARK ;
 int NFTA_TRACE_NFPROTO ;
 int NFTA_TRACE_POLICY ;
 int NFTA_TRACE_TABLE ;
 int NFTA_TRACE_TYPE ;
 int NFTA_TRACE_VERDICT ;
 int NFT_MSG_TRACE ;
 int NFT_TRACETYPE_LL_HSIZE ;
 int NFT_TRACETYPE_NETWORK_HSIZE ;



 int NFT_TRACETYPE_TRANSPORT_HSIZE ;

 int WARN_ON_ONCE (int) ;

 int htonl (int) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ nf_trace_fill_dev_info (struct sk_buff*,int ,int ) ;
 scalar_t__ nf_trace_fill_pkt_info (struct sk_buff*,struct nft_pktinfo const*) ;
 scalar_t__ nf_trace_fill_rule_info (struct sk_buff*,struct nft_traceinfo*) ;
 int nfnetlink_has_listeners (int ,int ) ;
 int nfnetlink_send (struct sk_buff*,int ,int ,int ,int ,int ) ;
 int nfnl_msg_type (int ,int ) ;
 int nft_in (struct nft_pktinfo const*) ;
 int nft_net (struct nft_pktinfo const*) ;
 int nft_out (struct nft_pktinfo const*) ;
 int nft_pf (struct nft_pktinfo const*) ;
 scalar_t__ nft_trace_have_verdict_chain (struct nft_traceinfo*) ;
 int nft_verdict_dump (struct sk_buff*,int ,TYPE_7__*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 unsigned int nla_total_size (int) ;
 unsigned int nla_total_size_64bit (int) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (unsigned int,int ) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 unsigned int nlmsg_total_size (int) ;
 int strlen (int ) ;
 scalar_t__ trace_fill_id (struct sk_buff*,TYPE_6__*) ;

void nft_trace_notify(struct nft_traceinfo *info)
{
 const struct nft_pktinfo *pkt = info->pkt;
 struct nfgenmsg *nfmsg;
 struct nlmsghdr *nlh;
 struct sk_buff *skb;
 unsigned int size;
 u16 event;

 if (!nfnetlink_has_listeners(nft_net(pkt), NFNLGRP_NFTRACE))
  return;

 size = nlmsg_total_size(sizeof(struct nfgenmsg)) +
  nla_total_size(strlen(info->chain->table->name)) +
  nla_total_size(strlen(info->chain->name)) +
  nla_total_size_64bit(sizeof(__be64)) +
  nla_total_size(sizeof(__be32)) +
  nla_total_size(0) +
   nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(NFT_TRACETYPE_LL_HSIZE) +
  nla_total_size(NFT_TRACETYPE_NETWORK_HSIZE) +
  nla_total_size(NFT_TRACETYPE_TRANSPORT_HSIZE) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(__be16)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(__be16)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u32));

 if (nft_trace_have_verdict_chain(info))
  size += nla_total_size(strlen(info->verdict->chain->name));

 skb = nlmsg_new(size, GFP_ATOMIC);
 if (!skb)
  return;

 event = nfnl_msg_type(NFNL_SUBSYS_NFTABLES, NFT_MSG_TRACE);
 nlh = nlmsg_put(skb, 0, 0, event, sizeof(struct nfgenmsg), 0);
 if (!nlh)
  goto nla_put_failure;

 nfmsg = nlmsg_data(nlh);
 nfmsg->nfgen_family = info->basechain->type->family;
 nfmsg->version = NFNETLINK_V0;
 nfmsg->res_id = 0;

 if (nla_put_be32(skb, NFTA_TRACE_NFPROTO, htonl(nft_pf(pkt))))
  goto nla_put_failure;

 if (nla_put_be32(skb, NFTA_TRACE_TYPE, htonl(info->type)))
  goto nla_put_failure;

 if (trace_fill_id(skb, pkt->skb))
  goto nla_put_failure;

 if (nla_put_string(skb, NFTA_TRACE_CHAIN, info->chain->name))
  goto nla_put_failure;

 if (nla_put_string(skb, NFTA_TRACE_TABLE, info->chain->table->name))
  goto nla_put_failure;

 if (nf_trace_fill_rule_info(skb, info))
  goto nla_put_failure;

 switch (info->type) {
 case 129:
 case 128:
  break;
 case 131:
 case 130:
  if (nft_verdict_dump(skb, NFTA_TRACE_VERDICT, info->verdict))
   goto nla_put_failure;
  break;
 case 132:
  if (nla_put_be32(skb, NFTA_TRACE_POLICY,
     htonl(info->basechain->policy)))
   goto nla_put_failure;
  break;
 }

 if (pkt->skb->mark &&
     nla_put_be32(skb, NFTA_TRACE_MARK, htonl(pkt->skb->mark)))
  goto nla_put_failure;

 if (!info->packet_dumped) {
  if (nf_trace_fill_dev_info(skb, nft_in(pkt), nft_out(pkt)))
   goto nla_put_failure;

  if (nf_trace_fill_pkt_info(skb, pkt))
   goto nla_put_failure;
  info->packet_dumped = 1;
 }

 nlmsg_end(skb, nlh);
 nfnetlink_send(skb, nft_net(pkt), 0, NFNLGRP_NFTRACE, 0, GFP_ATOMIC);
 return;

 nla_put_failure:
 WARN_ON_ONCE(1);
 kfree_skb(skb);
}
