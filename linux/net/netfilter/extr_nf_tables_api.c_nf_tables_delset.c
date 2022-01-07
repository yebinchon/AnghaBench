
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct nft_set {int nelems; scalar_t__ use; } ;
struct nft_ctx {int table; } ;
struct nfgenmsg {scalar_t__ nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int EAFNOSUPPORT ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct nft_set*) ;
 scalar_t__ NFPROTO_UNSPEC ;
 size_t NFTA_SET_HANDLE ;
 size_t NFTA_SET_NAME ;
 size_t NFTA_SET_TABLE ;
 int NLM_F_NONREC ;
 int NL_SET_BAD_ATTR (struct netlink_ext_ack*,struct nlattr const*) ;
 int PTR_ERR (struct nft_set*) ;
 scalar_t__ atomic_read (int *) ;
 int nft_ctx_init_from_setattr (struct nft_ctx*,struct net*,struct sk_buff*,struct nlmsghdr const*,struct nlattr const* const*,struct netlink_ext_ack*,int ) ;
 int nft_delset (struct nft_ctx*,struct nft_set*) ;
 int nft_genmask_next (struct net*) ;
 struct nft_set* nft_set_lookup (int ,struct nlattr const*,int ) ;
 struct nft_set* nft_set_lookup_byhandle (int ,struct nlattr const*,int ) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;

__attribute__((used)) static int nf_tables_delset(struct net *net, struct sock *nlsk,
       struct sk_buff *skb, const struct nlmsghdr *nlh,
       const struct nlattr * const nla[],
       struct netlink_ext_ack *extack)
{
 const struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 u8 genmask = nft_genmask_next(net);
 const struct nlattr *attr;
 struct nft_set *set;
 struct nft_ctx ctx;
 int err;

 if (nfmsg->nfgen_family == NFPROTO_UNSPEC)
  return -EAFNOSUPPORT;
 if (nla[NFTA_SET_TABLE] == ((void*)0))
  return -EINVAL;

 err = nft_ctx_init_from_setattr(&ctx, net, skb, nlh, nla, extack,
     genmask);
 if (err < 0)
  return err;

 if (nla[NFTA_SET_HANDLE]) {
  attr = nla[NFTA_SET_HANDLE];
  set = nft_set_lookup_byhandle(ctx.table, attr, genmask);
 } else {
  attr = nla[NFTA_SET_NAME];
  set = nft_set_lookup(ctx.table, attr, genmask);
 }

 if (IS_ERR(set)) {
  NL_SET_BAD_ATTR(extack, attr);
  return PTR_ERR(set);
 }
 if (set->use ||
     (nlh->nlmsg_flags & NLM_F_NONREC && atomic_read(&set->nelems) > 0)) {
  NL_SET_BAD_ATTR(extack, attr);
  return -EBUSY;
 }

 return nft_delset(&ctx, set);
}
