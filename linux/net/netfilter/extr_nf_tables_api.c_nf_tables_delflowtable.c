
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_table {scalar_t__ use; } ;
struct nft_flowtable {scalar_t__ use; } ;
struct nft_ctx {int dummy; } ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct nft_table*) ;
 size_t NFTA_FLOWTABLE_HANDLE ;
 size_t NFTA_FLOWTABLE_NAME ;
 size_t NFTA_FLOWTABLE_TABLE ;
 int NL_SET_BAD_ATTR (struct netlink_ext_ack*,struct nlattr const*) ;
 int PTR_ERR (struct nft_table*) ;
 int nft_ctx_init (struct nft_ctx*,struct net*,struct sk_buff*,struct nlmsghdr const*,int,struct nft_table*,int *,struct nlattr const* const*) ;
 int nft_delflowtable (struct nft_ctx*,struct nft_table*) ;
 struct nft_table* nft_flowtable_lookup (struct nft_table*,struct nlattr const*,int ) ;
 struct nft_table* nft_flowtable_lookup_byhandle (struct nft_table*,struct nlattr const*,int ) ;
 int nft_genmask_next (struct net*) ;
 struct nft_table* nft_table_lookup (struct net*,struct nlattr const* const,int,int ) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;

__attribute__((used)) static int nf_tables_delflowtable(struct net *net, struct sock *nlsk,
      struct sk_buff *skb,
      const struct nlmsghdr *nlh,
      const struct nlattr * const nla[],
      struct netlink_ext_ack *extack)
{
 const struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 u8 genmask = nft_genmask_next(net);
 int family = nfmsg->nfgen_family;
 struct nft_flowtable *flowtable;
 const struct nlattr *attr;
 struct nft_table *table;
 struct nft_ctx ctx;

 if (!nla[NFTA_FLOWTABLE_TABLE] ||
     (!nla[NFTA_FLOWTABLE_NAME] &&
      !nla[NFTA_FLOWTABLE_HANDLE]))
  return -EINVAL;

 table = nft_table_lookup(net, nla[NFTA_FLOWTABLE_TABLE], family,
     genmask);
 if (IS_ERR(table)) {
  NL_SET_BAD_ATTR(extack, nla[NFTA_FLOWTABLE_TABLE]);
  return PTR_ERR(table);
 }

 if (nla[NFTA_FLOWTABLE_HANDLE]) {
  attr = nla[NFTA_FLOWTABLE_HANDLE];
  flowtable = nft_flowtable_lookup_byhandle(table, attr, genmask);
 } else {
  attr = nla[NFTA_FLOWTABLE_NAME];
  flowtable = nft_flowtable_lookup(table, attr, genmask);
 }

 if (IS_ERR(flowtable)) {
  NL_SET_BAD_ATTR(extack, attr);
  return PTR_ERR(flowtable);
 }
 if (flowtable->use > 0) {
  NL_SET_BAD_ATTR(extack, attr);
  return -EBUSY;
 }

 nft_ctx_init(&ctx, net, skb, nlh, family, table, ((void*)0), nla);

 return nft_delflowtable(&ctx, flowtable);
}
