
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct sk_buff {int len; } ;
struct nlmsghdr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; int version; int nfgen_family; } ;
struct nf_acct {scalar_t__ flags; scalar_t__ data; int refcnt; int bytes; int pkts; int name; } ;


 int AF_UNSPEC ;
 int NFACCT_BYTES ;
 int NFACCT_FLAGS ;
 int NFACCT_F_QUOTA ;
 int NFACCT_NAME ;
 int NFACCT_OVERQUOTA_BIT ;
 int NFACCT_PAD ;
 int NFACCT_PKTS ;
 int NFACCT_QUOTA ;
 int NFACCT_USE ;
 int NFNETLINK_V0 ;
 scalar_t__ NFNL_MSG_ACCT_GET_CTRZERO ;
 int NFNL_SUBSYS_ACCT ;
 unsigned int NLM_F_MULTI ;
 int atomic64_read (int *) ;
 int atomic64_xchg (int *,int ) ;
 int clear_bit (int ,int*) ;
 int cpu_to_be64 (int ) ;
 int htonl (scalar_t__) ;
 int nfnl_msg_type (int ,int) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_be64 (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,scalar_t__,scalar_t__,int,int,unsigned int) ;
 scalar_t__ refcount_read (int *) ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static int
nfnl_acct_fill_info(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
     int event, struct nf_acct *acct)
{
 struct nlmsghdr *nlh;
 struct nfgenmsg *nfmsg;
 unsigned int flags = portid ? NLM_F_MULTI : 0;
 u64 pkts, bytes;
 u32 old_flags;

 event = nfnl_msg_type(NFNL_SUBSYS_ACCT, event);
 nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
 if (nlh == ((void*)0))
  goto nlmsg_failure;

 nfmsg = nlmsg_data(nlh);
 nfmsg->nfgen_family = AF_UNSPEC;
 nfmsg->version = NFNETLINK_V0;
 nfmsg->res_id = 0;

 if (nla_put_string(skb, NFACCT_NAME, acct->name))
  goto nla_put_failure;

 old_flags = acct->flags;
 if (type == NFNL_MSG_ACCT_GET_CTRZERO) {
  pkts = atomic64_xchg(&acct->pkts, 0);
  bytes = atomic64_xchg(&acct->bytes, 0);
  smp_mb__before_atomic();
  if (acct->flags & NFACCT_F_QUOTA)
   clear_bit(NFACCT_OVERQUOTA_BIT, &acct->flags);
 } else {
  pkts = atomic64_read(&acct->pkts);
  bytes = atomic64_read(&acct->bytes);
 }
 if (nla_put_be64(skb, NFACCT_PKTS, cpu_to_be64(pkts),
    NFACCT_PAD) ||
     nla_put_be64(skb, NFACCT_BYTES, cpu_to_be64(bytes),
    NFACCT_PAD) ||
     nla_put_be32(skb, NFACCT_USE, htonl(refcount_read(&acct->refcnt))))
  goto nla_put_failure;
 if (acct->flags & NFACCT_F_QUOTA) {
  u64 *quota = (u64 *)acct->data;

  if (nla_put_be32(skb, NFACCT_FLAGS, htonl(old_flags)) ||
      nla_put_be64(skb, NFACCT_QUOTA, cpu_to_be64(*quota),
     NFACCT_PAD))
   goto nla_put_failure;
 }
 nlmsg_end(skb, nlh);
 return skb->len;

nlmsg_failure:
nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -1;
}
