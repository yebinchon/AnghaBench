
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int len; } ;
struct nlmsghdr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; int version; int nfgen_family; } ;
struct TYPE_2__ {int count; } ;
struct net {TYPE_1__ ct; } ;


 int AF_UNSPEC ;
 int CTA_STATS_GLOBAL_ENTRIES ;
 int CTA_STATS_GLOBAL_MAX_ENTRIES ;
 int IPCTNL_MSG_CT_GET_STATS ;
 int NFNETLINK_V0 ;
 int NFNL_SUBSYS_CTNETLINK ;
 unsigned int NLM_F_MULTI ;
 unsigned int atomic_read (int *) ;
 int htonl (unsigned int) ;
 unsigned int nf_conntrack_max ;
 unsigned int nfnl_msg_type (int ,int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,scalar_t__,scalar_t__,unsigned int,int,unsigned int) ;

__attribute__((used)) static int
ctnetlink_stat_ct_fill_info(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
       struct net *net)
{
 struct nlmsghdr *nlh;
 struct nfgenmsg *nfmsg;
 unsigned int flags = portid ? NLM_F_MULTI : 0, event;
 unsigned int nr_conntracks = atomic_read(&net->ct.count);

 event = nfnl_msg_type(NFNL_SUBSYS_CTNETLINK, IPCTNL_MSG_CT_GET_STATS);
 nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
 if (nlh == ((void*)0))
  goto nlmsg_failure;

 nfmsg = nlmsg_data(nlh);
 nfmsg->nfgen_family = AF_UNSPEC;
 nfmsg->version = NFNETLINK_V0;
 nfmsg->res_id = 0;

 if (nla_put_be32(skb, CTA_STATS_GLOBAL_ENTRIES, htonl(nr_conntracks)))
  goto nla_put_failure;

 if (nla_put_be32(skb, CTA_STATS_GLOBAL_MAX_ENTRIES, htonl(nf_conntrack_max)))
  goto nla_put_failure;

 nlmsg_end(skb, nlh);
 return skb->len;

nla_put_failure:
nlmsg_failure:
 nlmsg_cancel(skb, nlh);
 return -1;
}
