
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_table {scalar_t__ use; } ;
struct nft_object {scalar_t__ use; } ;
struct nft_ctx {int dummy; } ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct nft_table*) ;
 size_t NFTA_OBJ_HANDLE ;
 size_t NFTA_OBJ_NAME ;
 size_t NFTA_OBJ_TABLE ;
 size_t NFTA_OBJ_TYPE ;
 int NL_SET_BAD_ATTR (struct netlink_ext_ack*,struct nlattr const*) ;
 int PTR_ERR (struct nft_table*) ;
 int nft_ctx_init (struct nft_ctx*,struct net*,struct sk_buff*,struct nlmsghdr const*,int,struct nft_table*,int *,struct nlattr const* const*) ;
 int nft_delobj (struct nft_ctx*,struct nft_table*) ;
 int nft_genmask_next (struct net*) ;
 struct nft_table* nft_obj_lookup (struct net*,struct nft_table*,struct nlattr const*,int ,int ) ;
 struct nft_table* nft_obj_lookup_byhandle (struct nft_table*,struct nlattr const*,int ,int ) ;
 struct nft_table* nft_table_lookup (struct net*,struct nlattr const* const,int,int ) ;
 int nla_get_be32 (struct nlattr const* const) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;
 int ntohl (int ) ;

__attribute__((used)) static int nf_tables_delobj(struct net *net, struct sock *nlsk,
       struct sk_buff *skb, const struct nlmsghdr *nlh,
       const struct nlattr * const nla[],
       struct netlink_ext_ack *extack)
{
 const struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 u8 genmask = nft_genmask_next(net);
 int family = nfmsg->nfgen_family;
 const struct nlattr *attr;
 struct nft_table *table;
 struct nft_object *obj;
 struct nft_ctx ctx;
 u32 objtype;

 if (!nla[NFTA_OBJ_TYPE] ||
     (!nla[NFTA_OBJ_NAME] && !nla[NFTA_OBJ_HANDLE]))
  return -EINVAL;

 table = nft_table_lookup(net, nla[NFTA_OBJ_TABLE], family, genmask);
 if (IS_ERR(table)) {
  NL_SET_BAD_ATTR(extack, nla[NFTA_OBJ_TABLE]);
  return PTR_ERR(table);
 }

 objtype = ntohl(nla_get_be32(nla[NFTA_OBJ_TYPE]));
 if (nla[NFTA_OBJ_HANDLE]) {
  attr = nla[NFTA_OBJ_HANDLE];
  obj = nft_obj_lookup_byhandle(table, attr, objtype, genmask);
 } else {
  attr = nla[NFTA_OBJ_NAME];
  obj = nft_obj_lookup(net, table, attr, objtype, genmask);
 }

 if (IS_ERR(obj)) {
  NL_SET_BAD_ATTR(extack, attr);
  return PTR_ERR(obj);
 }
 if (obj->use > 0) {
  NL_SET_BAD_ATTR(extack, attr);
  return -EBUSY;
 }

 nft_ctx_init(&ctx, net, skb, nlh, family, table, ((void*)0), nla);

 return nft_delobj(&ctx, obj);
}
