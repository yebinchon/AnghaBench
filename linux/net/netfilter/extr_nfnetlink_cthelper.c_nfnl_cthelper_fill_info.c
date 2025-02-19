
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int len; } ;
struct nlmsghdr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; int version; int nfgen_family; } ;
struct nf_conntrack_helper {int queue_num; int data_len; int flags; int name; } ;


 int AF_UNSPEC ;
 int NFCTH_NAME ;
 int NFCTH_PRIV_DATA_LEN ;
 int NFCTH_QUEUE_NUM ;
 int NFCTH_STATUS ;
 int NFCT_HELPER_STATUS_DISABLED ;
 int NFCT_HELPER_STATUS_ENABLED ;
 int NFNETLINK_V0 ;
 int NFNL_SUBSYS_CTHELPER ;
 int NF_CT_HELPER_F_CONFIGURED ;
 unsigned int NLM_F_MULTI ;
 int htonl (int) ;
 scalar_t__ nfnl_cthelper_dump_policy (struct sk_buff*,struct nf_conntrack_helper*) ;
 scalar_t__ nfnl_cthelper_dump_tuple (struct sk_buff*,struct nf_conntrack_helper*) ;
 int nfnl_msg_type (int ,int) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,scalar_t__,scalar_t__,int,int,unsigned int) ;

__attribute__((used)) static int
nfnl_cthelper_fill_info(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
   int event, struct nf_conntrack_helper *helper)
{
 struct nlmsghdr *nlh;
 struct nfgenmsg *nfmsg;
 unsigned int flags = portid ? NLM_F_MULTI : 0;
 int status;

 event = nfnl_msg_type(NFNL_SUBSYS_CTHELPER, event);
 nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
 if (nlh == ((void*)0))
  goto nlmsg_failure;

 nfmsg = nlmsg_data(nlh);
 nfmsg->nfgen_family = AF_UNSPEC;
 nfmsg->version = NFNETLINK_V0;
 nfmsg->res_id = 0;

 if (nla_put_string(skb, NFCTH_NAME, helper->name))
  goto nla_put_failure;

 if (nla_put_be32(skb, NFCTH_QUEUE_NUM, htonl(helper->queue_num)))
  goto nla_put_failure;

 if (nfnl_cthelper_dump_tuple(skb, helper) < 0)
  goto nla_put_failure;

 if (nfnl_cthelper_dump_policy(skb, helper) < 0)
  goto nla_put_failure;

 if (nla_put_be32(skb, NFCTH_PRIV_DATA_LEN, htonl(helper->data_len)))
  goto nla_put_failure;

 if (helper->flags & NF_CT_HELPER_F_CONFIGURED)
  status = NFCT_HELPER_STATUS_ENABLED;
 else
  status = NFCT_HELPER_STATUS_DISABLED;

 if (nla_put_be32(skb, NFCTH_STATUS, htonl(status)))
  goto nla_put_failure;

 nlmsg_end(skb, nlh);
 return skb->len;

nlmsg_failure:
nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -1;
}
