
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int len; } ;
struct nlmsghdr {int dummy; } ;
struct nfgenmsg {int res_id; int version; int nfgen_family; } ;
struct ip_conntrack_stat {int search_restart; int error; int early_drop; int drop; int insert_failed; int insert; int ignore; int invalid; int found; } ;
typedef int __u16 ;


 int AF_UNSPEC ;
 int CTA_STATS_DROP ;
 int CTA_STATS_EARLY_DROP ;
 int CTA_STATS_ERROR ;
 int CTA_STATS_FOUND ;
 int CTA_STATS_IGNORE ;
 int CTA_STATS_INSERT ;
 int CTA_STATS_INSERT_FAILED ;
 int CTA_STATS_INVALID ;
 int CTA_STATS_SEARCH_RESTART ;
 int IPCTNL_MSG_CT_GET_STATS_CPU ;
 int NFNETLINK_V0 ;
 int NFNL_SUBSYS_CTNETLINK ;
 unsigned int NLM_F_MULTI ;
 int htonl (int ) ;
 int htons (int ) ;
 unsigned int nfnl_msg_type (int ,int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,scalar_t__,scalar_t__,unsigned int,int,unsigned int) ;

__attribute__((used)) static int
ctnetlink_ct_stat_cpu_fill_info(struct sk_buff *skb, u32 portid, u32 seq,
    __u16 cpu, const struct ip_conntrack_stat *st)
{
 struct nlmsghdr *nlh;
 struct nfgenmsg *nfmsg;
 unsigned int flags = portid ? NLM_F_MULTI : 0, event;

 event = nfnl_msg_type(NFNL_SUBSYS_CTNETLINK,
         IPCTNL_MSG_CT_GET_STATS_CPU);
 nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
 if (nlh == ((void*)0))
  goto nlmsg_failure;

 nfmsg = nlmsg_data(nlh);
 nfmsg->nfgen_family = AF_UNSPEC;
 nfmsg->version = NFNETLINK_V0;
 nfmsg->res_id = htons(cpu);

 if (nla_put_be32(skb, CTA_STATS_FOUND, htonl(st->found)) ||
     nla_put_be32(skb, CTA_STATS_INVALID, htonl(st->invalid)) ||
     nla_put_be32(skb, CTA_STATS_IGNORE, htonl(st->ignore)) ||
     nla_put_be32(skb, CTA_STATS_INSERT, htonl(st->insert)) ||
     nla_put_be32(skb, CTA_STATS_INSERT_FAILED,
    htonl(st->insert_failed)) ||
     nla_put_be32(skb, CTA_STATS_DROP, htonl(st->drop)) ||
     nla_put_be32(skb, CTA_STATS_EARLY_DROP, htonl(st->early_drop)) ||
     nla_put_be32(skb, CTA_STATS_ERROR, htonl(st->error)) ||
     nla_put_be32(skb, CTA_STATS_SEARCH_RESTART,
    htonl(st->search_restart)))
  goto nla_put_failure;

 nlmsg_end(skb, nlh);
 return skb->len;

nla_put_failure:
nlmsg_failure:
 nlmsg_cancel(skb, nlh);
 return -1;
}
