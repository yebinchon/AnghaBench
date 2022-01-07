
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_set_elem {int dummy; } ;
struct nft_set {int name; } ;
struct nft_ctx {TYPE_3__* table; TYPE_2__* net; int family; } ;
struct nfgenmsg {int res_id; int version; int nfgen_family; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_4__ {int base_seq; } ;
struct TYPE_5__ {TYPE_1__ nft; } ;


 int NFNETLINK_V0 ;
 int NFNL_SUBSYS_NFTABLES ;
 int NFTA_SET_ELEM_LIST_ELEMENTS ;
 int NFTA_SET_NAME ;
 int NFTA_SET_TABLE ;
 int htons (int) ;
 int nf_tables_fill_setelem (struct sk_buff*,struct nft_set const*,struct nft_set_elem const*) ;
 int nfnl_msg_type (int ,int) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,int ) ;
 int nlmsg_trim (struct sk_buff*,struct nlmsghdr*) ;

__attribute__((used)) static int nf_tables_fill_setelem_info(struct sk_buff *skb,
           const struct nft_ctx *ctx, u32 seq,
           u32 portid, int event, u16 flags,
           const struct nft_set *set,
           const struct nft_set_elem *elem)
{
 struct nfgenmsg *nfmsg;
 struct nlmsghdr *nlh;
 struct nlattr *nest;
 int err;

 event = nfnl_msg_type(NFNL_SUBSYS_NFTABLES, event);
 nlh = nlmsg_put(skb, portid, seq, event, sizeof(struct nfgenmsg),
   flags);
 if (nlh == ((void*)0))
  goto nla_put_failure;

 nfmsg = nlmsg_data(nlh);
 nfmsg->nfgen_family = ctx->family;
 nfmsg->version = NFNETLINK_V0;
 nfmsg->res_id = htons(ctx->net->nft.base_seq & 0xffff);

 if (nla_put_string(skb, NFTA_SET_TABLE, ctx->table->name))
  goto nla_put_failure;
 if (nla_put_string(skb, NFTA_SET_NAME, set->name))
  goto nla_put_failure;

 nest = nla_nest_start_noflag(skb, NFTA_SET_ELEM_LIST_ELEMENTS);
 if (nest == ((void*)0))
  goto nla_put_failure;

 err = nf_tables_fill_setelem(skb, set, elem);
 if (err < 0)
  goto nla_put_failure;

 nla_nest_end(skb, nest);

 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 nlmsg_trim(skb, nlh);
 return -1;
}
