
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int len; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; int version; int nfgen_family; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conn {int status; } ;


 int CTA_TUPLE_ORIG ;
 int CTA_TUPLE_REPLY ;
 int CTA_TUPLE_ZONE ;
 int CTA_ZONE ;
 int IPCTNL_MSG_CT_NEW ;
 int IPS_OFFLOAD_BIT ;
 int IP_CT_DIR_ORIGINAL ;
 int IP_CT_DIR_REPLY ;
 int NFNETLINK_V0 ;
 int NFNL_SUBSYS_CTNETLINK ;
 int NF_CT_DEFAULT_ZONE_DIR ;
 int NF_CT_ZONE_DIR_ORIG ;
 int NF_CT_ZONE_DIR_REPL ;
 unsigned int NLM_F_MULTI ;
 scalar_t__ ctnetlink_dump_acct (struct sk_buff*,struct nf_conn*,scalar_t__) ;
 scalar_t__ ctnetlink_dump_ct_seq_adj (struct sk_buff*,struct nf_conn*) ;
 scalar_t__ ctnetlink_dump_ct_synproxy (struct sk_buff*,struct nf_conn*) ;
 scalar_t__ ctnetlink_dump_helpinfo (struct sk_buff*,struct nf_conn*) ;
 scalar_t__ ctnetlink_dump_id (struct sk_buff*,struct nf_conn*) ;
 scalar_t__ ctnetlink_dump_labels (struct sk_buff*,struct nf_conn*) ;
 scalar_t__ ctnetlink_dump_mark (struct sk_buff*,struct nf_conn*) ;
 scalar_t__ ctnetlink_dump_master (struct sk_buff*,struct nf_conn*) ;
 scalar_t__ ctnetlink_dump_protoinfo (struct sk_buff*,struct nf_conn*) ;
 scalar_t__ ctnetlink_dump_secctx (struct sk_buff*,struct nf_conn*) ;
 scalar_t__ ctnetlink_dump_status (struct sk_buff*,struct nf_conn*) ;
 scalar_t__ ctnetlink_dump_timeout (struct sk_buff*,struct nf_conn*) ;
 scalar_t__ ctnetlink_dump_timestamp (struct sk_buff*,struct nf_conn*) ;
 scalar_t__ ctnetlink_dump_tuples (struct sk_buff*,int ) ;
 scalar_t__ ctnetlink_dump_use (struct sk_buff*,struct nf_conn*) ;
 scalar_t__ ctnetlink_dump_zone_id (struct sk_buff*,int ,struct nf_conntrack_zone const*,int ) ;
 int nf_ct_l3num (struct nf_conn*) ;
 int nf_ct_tuple (struct nf_conn*,int ) ;
 struct nf_conntrack_zone* nf_ct_zone (struct nf_conn*) ;
 unsigned int nfnl_msg_type (int ,int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,scalar_t__,scalar_t__,unsigned int,int,unsigned int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int
ctnetlink_fill_info(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
      struct nf_conn *ct)
{
 const struct nf_conntrack_zone *zone;
 struct nlmsghdr *nlh;
 struct nfgenmsg *nfmsg;
 struct nlattr *nest_parms;
 unsigned int flags = portid ? NLM_F_MULTI : 0, event;

 event = nfnl_msg_type(NFNL_SUBSYS_CTNETLINK, IPCTNL_MSG_CT_NEW);
 nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
 if (nlh == ((void*)0))
  goto nlmsg_failure;

 nfmsg = nlmsg_data(nlh);
 nfmsg->nfgen_family = nf_ct_l3num(ct);
 nfmsg->version = NFNETLINK_V0;
 nfmsg->res_id = 0;

 zone = nf_ct_zone(ct);

 nest_parms = nla_nest_start(skb, CTA_TUPLE_ORIG);
 if (!nest_parms)
  goto nla_put_failure;
 if (ctnetlink_dump_tuples(skb, nf_ct_tuple(ct, IP_CT_DIR_ORIGINAL)) < 0)
  goto nla_put_failure;
 if (ctnetlink_dump_zone_id(skb, CTA_TUPLE_ZONE, zone,
       NF_CT_ZONE_DIR_ORIG) < 0)
  goto nla_put_failure;
 nla_nest_end(skb, nest_parms);

 nest_parms = nla_nest_start(skb, CTA_TUPLE_REPLY);
 if (!nest_parms)
  goto nla_put_failure;
 if (ctnetlink_dump_tuples(skb, nf_ct_tuple(ct, IP_CT_DIR_REPLY)) < 0)
  goto nla_put_failure;
 if (ctnetlink_dump_zone_id(skb, CTA_TUPLE_ZONE, zone,
       NF_CT_ZONE_DIR_REPL) < 0)
  goto nla_put_failure;
 nla_nest_end(skb, nest_parms);

 if (ctnetlink_dump_zone_id(skb, CTA_ZONE, zone,
       NF_CT_DEFAULT_ZONE_DIR) < 0)
  goto nla_put_failure;

 if (ctnetlink_dump_status(skb, ct) < 0 ||
     ctnetlink_dump_acct(skb, ct, type) < 0 ||
     ctnetlink_dump_timestamp(skb, ct) < 0 ||
     ctnetlink_dump_helpinfo(skb, ct) < 0 ||
     ctnetlink_dump_mark(skb, ct) < 0 ||
     ctnetlink_dump_secctx(skb, ct) < 0 ||
     ctnetlink_dump_labels(skb, ct) < 0 ||
     ctnetlink_dump_id(skb, ct) < 0 ||
     ctnetlink_dump_use(skb, ct) < 0 ||
     ctnetlink_dump_master(skb, ct) < 0 ||
     ctnetlink_dump_ct_seq_adj(skb, ct) < 0 ||
     ctnetlink_dump_ct_synproxy(skb, ct) < 0)
  goto nla_put_failure;

 if (!test_bit(IPS_OFFLOAD_BIT, &ct->status) &&
     (ctnetlink_dump_timeout(skb, ct) < 0 ||
      ctnetlink_dump_protoinfo(skb, ct) < 0))
  goto nla_put_failure;

 nlmsg_end(skb, nlh);
 return skb->len;

nlmsg_failure:
nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -1;
}
