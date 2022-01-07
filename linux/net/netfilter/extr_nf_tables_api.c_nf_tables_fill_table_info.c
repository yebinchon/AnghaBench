
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nft_table {int handle; int use; int flags; int name; } ;
struct nfgenmsg {int nfgen_family; int res_id; int version; } ;
struct TYPE_2__ {int base_seq; } ;
struct net {TYPE_1__ nft; } ;


 int NFNETLINK_V0 ;
 int NFNL_SUBSYS_NFTABLES ;
 int NFTA_TABLE_FLAGS ;
 int NFTA_TABLE_HANDLE ;
 int NFTA_TABLE_NAME ;
 int NFTA_TABLE_PAD ;
 int NFTA_TABLE_USE ;
 int cpu_to_be64 (int ) ;
 int htonl (int ) ;
 int htons (int) ;
 int nfnl_msg_type (int ,int) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_be64 (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,int ) ;
 int nlmsg_trim (struct sk_buff*,struct nlmsghdr*) ;

__attribute__((used)) static int nf_tables_fill_table_info(struct sk_buff *skb, struct net *net,
         u32 portid, u32 seq, int event, u32 flags,
         int family, const struct nft_table *table)
{
 struct nlmsghdr *nlh;
 struct nfgenmsg *nfmsg;

 event = nfnl_msg_type(NFNL_SUBSYS_NFTABLES, event);
 nlh = nlmsg_put(skb, portid, seq, event, sizeof(struct nfgenmsg), flags);
 if (nlh == ((void*)0))
  goto nla_put_failure;

 nfmsg = nlmsg_data(nlh);
 nfmsg->nfgen_family = family;
 nfmsg->version = NFNETLINK_V0;
 nfmsg->res_id = htons(net->nft.base_seq & 0xffff);

 if (nla_put_string(skb, NFTA_TABLE_NAME, table->name) ||
     nla_put_be32(skb, NFTA_TABLE_FLAGS, htonl(table->flags)) ||
     nla_put_be32(skb, NFTA_TABLE_USE, htonl(table->use)) ||
     nla_put_be64(skb, NFTA_TABLE_HANDLE, cpu_to_be64(table->handle),
    NFTA_TABLE_PAD))
  goto nla_put_failure;

 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 nlmsg_trim(skb, nlh);
 return -1;
}
