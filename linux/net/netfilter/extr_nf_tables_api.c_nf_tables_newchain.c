
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct nft_table {int flags; } ;
struct nft_ctx {int dummy; } ;
struct nft_chain {int flags; } ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int commit_mutex; } ;
struct net {TYPE_1__ nft; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct nft_table*) ;
 size_t NFTA_CHAIN_FLAGS ;
 size_t NFTA_CHAIN_HANDLE ;
 size_t NFTA_CHAIN_HOOK ;
 size_t NFTA_CHAIN_NAME ;
 size_t NFTA_CHAIN_POLICY ;
 size_t NFTA_CHAIN_TABLE ;
 int NFT_BASE_CHAIN ;


 int NLM_F_EXCL ;
 int NLM_F_REPLACE ;
 int NL_SET_BAD_ATTR (struct netlink_ext_ack*,struct nlattr const*) ;
 int PTR_ERR (struct nft_table*) ;
 int be64_to_cpu (int ) ;
 int lockdep_assert_held (int *) ;
 int nf_tables_addchain (struct nft_ctx*,int,int,int,int) ;
 int nf_tables_updchain (struct nft_ctx*,int,int,int) ;
 struct nft_table* nft_chain_lookup (struct net*,struct nft_table*,struct nlattr const*,int) ;
 struct nft_table* nft_chain_lookup_byhandle (struct nft_table*,int ,int) ;
 int nft_ctx_init (struct nft_ctx*,struct net*,struct sk_buff*,struct nlmsghdr const*,int,struct nft_table*,struct nft_table*,struct nlattr const* const*) ;
 int nft_genmask_next (struct net*) ;
 int nft_is_base_chain (struct nft_table*) ;
 struct nft_table* nft_table_lookup (struct net*,struct nlattr const* const,int,int) ;
 int nla_get_be32 (struct nlattr const* const) ;
 int nla_get_be64 (struct nlattr const* const) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;
 void* ntohl (int ) ;

__attribute__((used)) static int nf_tables_newchain(struct net *net, struct sock *nlsk,
         struct sk_buff *skb, const struct nlmsghdr *nlh,
         const struct nlattr * const nla[],
         struct netlink_ext_ack *extack)
{
 const struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 u8 genmask = nft_genmask_next(net);
 int family = nfmsg->nfgen_family;
 const struct nlattr *attr;
 struct nft_table *table;
 struct nft_chain *chain;
 u8 policy = 129;
 struct nft_ctx ctx;
 u64 handle = 0;
 u32 flags = 0;

 lockdep_assert_held(&net->nft.commit_mutex);

 table = nft_table_lookup(net, nla[NFTA_CHAIN_TABLE], family, genmask);
 if (IS_ERR(table)) {
  NL_SET_BAD_ATTR(extack, nla[NFTA_CHAIN_TABLE]);
  return PTR_ERR(table);
 }

 chain = ((void*)0);
 attr = nla[NFTA_CHAIN_NAME];

 if (nla[NFTA_CHAIN_HANDLE]) {
  handle = be64_to_cpu(nla_get_be64(nla[NFTA_CHAIN_HANDLE]));
  chain = nft_chain_lookup_byhandle(table, handle, genmask);
  if (IS_ERR(chain)) {
   NL_SET_BAD_ATTR(extack, nla[NFTA_CHAIN_HANDLE]);
   return PTR_ERR(chain);
  }
  attr = nla[NFTA_CHAIN_HANDLE];
 } else {
  chain = nft_chain_lookup(net, table, attr, genmask);
  if (IS_ERR(chain)) {
   if (PTR_ERR(chain) != -ENOENT) {
    NL_SET_BAD_ATTR(extack, attr);
    return PTR_ERR(chain);
   }
   chain = ((void*)0);
  }
 }

 if (nla[NFTA_CHAIN_POLICY]) {
  if (chain != ((void*)0) &&
      !nft_is_base_chain(chain)) {
   NL_SET_BAD_ATTR(extack, nla[NFTA_CHAIN_POLICY]);
   return -EOPNOTSUPP;
  }

  if (chain == ((void*)0) &&
      nla[NFTA_CHAIN_HOOK] == ((void*)0)) {
   NL_SET_BAD_ATTR(extack, nla[NFTA_CHAIN_POLICY]);
   return -EOPNOTSUPP;
  }

  policy = ntohl(nla_get_be32(nla[NFTA_CHAIN_POLICY]));
  switch (policy) {
  case 128:
  case 129:
   break;
  default:
   return -EINVAL;
  }
 }

 if (nla[NFTA_CHAIN_FLAGS])
  flags = ntohl(nla_get_be32(nla[NFTA_CHAIN_FLAGS]));
 else if (chain)
  flags = chain->flags;

 nft_ctx_init(&ctx, net, skb, nlh, family, table, chain, nla);

 if (chain != ((void*)0)) {
  if (nlh->nlmsg_flags & NLM_F_EXCL) {
   NL_SET_BAD_ATTR(extack, attr);
   return -EEXIST;
  }
  if (nlh->nlmsg_flags & NLM_F_REPLACE)
   return -EOPNOTSUPP;

  flags |= chain->flags & NFT_BASE_CHAIN;
  return nf_tables_updchain(&ctx, genmask, policy, flags);
 }

 return nf_tables_addchain(&ctx, family, genmask, policy, flags);
}
