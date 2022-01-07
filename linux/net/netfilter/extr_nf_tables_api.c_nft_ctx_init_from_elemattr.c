
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_table {int dummy; } ;
struct nft_ctx {int dummy; } ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 scalar_t__ IS_ERR (struct nft_table*) ;
 size_t NFTA_SET_ELEM_LIST_TABLE ;
 int NL_SET_BAD_ATTR (struct netlink_ext_ack*,struct nlattr const* const) ;
 int PTR_ERR (struct nft_table*) ;
 int nft_ctx_init (struct nft_ctx*,struct net*,struct sk_buff const*,struct nlmsghdr const*,int,struct nft_table*,int *,struct nlattr const* const*) ;
 struct nft_table* nft_table_lookup (struct net*,struct nlattr const* const,int,int ) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;

__attribute__((used)) static int nft_ctx_init_from_elemattr(struct nft_ctx *ctx, struct net *net,
          const struct sk_buff *skb,
          const struct nlmsghdr *nlh,
          const struct nlattr * const nla[],
          struct netlink_ext_ack *extack,
          u8 genmask)
{
 const struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 int family = nfmsg->nfgen_family;
 struct nft_table *table;

 table = nft_table_lookup(net, nla[NFTA_SET_ELEM_LIST_TABLE], family,
     genmask);
 if (IS_ERR(table)) {
  NL_SET_BAD_ATTR(extack, nla[NFTA_SET_ELEM_LIST_TABLE]);
  return PTR_ERR(table);
 }

 nft_ctx_init(ctx, net, skb, nlh, family, table, ((void*)0), nla);
 return 0;
}
