
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; int version; int nfgen_family; } ;
typedef enum ipset_cmd { ____Placeholder_ipset_cmd } ipset_cmd ;


 int NFNETLINK_V0 ;
 int NFNL_SUBSYS_IPSET ;
 int NFPROTO_IPV4 ;
 int nfnl_msg_type (int ,int) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,unsigned int) ;

__attribute__((used)) static struct nlmsghdr *
start_msg(struct sk_buff *skb, u32 portid, u32 seq, unsigned int flags,
   enum ipset_cmd cmd)
{
 struct nlmsghdr *nlh;
 struct nfgenmsg *nfmsg;

 nlh = nlmsg_put(skb, portid, seq, nfnl_msg_type(NFNL_SUBSYS_IPSET, cmd),
   sizeof(*nfmsg), flags);
 if (!nlh)
  return ((void*)0);

 nfmsg = nlmsg_data(nlh);
 nfmsg->nfgen_family = NFPROTO_IPV4;
 nfmsg->version = NFNETLINK_V0;
 nfmsg->res_id = 0;

 return nlh;
}
