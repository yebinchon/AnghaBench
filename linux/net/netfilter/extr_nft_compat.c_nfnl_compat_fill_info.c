
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct sk_buff {int len; } ;
struct nlmsghdr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; int version; int nfgen_family; } ;


 int NFNETLINK_V0 ;
 int NFNL_SUBSYS_NFT_COMPAT ;
 int NFTA_COMPAT_NAME ;
 int NFTA_COMPAT_REV ;
 int NFTA_COMPAT_TYPE ;
 unsigned int NLM_F_MULTI ;
 int htonl (int) ;
 int nfnl_msg_type (int ,int) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,char const*) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,scalar_t__,scalar_t__,int,int,unsigned int) ;

__attribute__((used)) static int
nfnl_compat_fill_info(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
        int event, u16 family, const char *name,
        int rev, int target)
{
 struct nlmsghdr *nlh;
 struct nfgenmsg *nfmsg;
 unsigned int flags = portid ? NLM_F_MULTI : 0;

 event = nfnl_msg_type(NFNL_SUBSYS_NFT_COMPAT, event);
 nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
 if (nlh == ((void*)0))
  goto nlmsg_failure;

 nfmsg = nlmsg_data(nlh);
 nfmsg->nfgen_family = family;
 nfmsg->version = NFNETLINK_V0;
 nfmsg->res_id = 0;

 if (nla_put_string(skb, NFTA_COMPAT_NAME, name) ||
     nla_put_be32(skb, NFTA_COMPAT_REV, htonl(rev)) ||
     nla_put_be32(skb, NFTA_COMPAT_TYPE, htonl(target)))
  goto nla_put_failure;

 nlmsg_end(skb, nlh);
 return skb->len;

nlmsg_failure:
nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -1;
}
