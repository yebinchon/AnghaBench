
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct nft_table {int family; int flags; struct nft_table* name; int chains_ht; int list; scalar_t__ handle; int flowtables; int objects; int sets; int chains; } ;
struct nft_ctx {int dummy; } ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int tables; int commit_mutex; } ;
struct net {TYPE_1__ nft; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct nft_table*) ;
 size_t NFTA_TABLE_FLAGS ;
 size_t NFTA_TABLE_NAME ;
 int NFT_MSG_NEWTABLE ;
 int NFT_TABLE_F_DORMANT ;
 int NLM_F_EXCL ;
 int NLM_F_REPLACE ;
 int NL_SET_BAD_ATTR (struct netlink_ext_ack*,struct nlattr const*) ;
 int PTR_ERR (struct nft_table*) ;
 int kfree (struct nft_table*) ;
 struct nft_table* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int nf_tables_updtable (struct nft_ctx*) ;
 int nft_chain_ht_params ;
 int nft_ctx_init (struct nft_ctx*,struct net*,struct sk_buff*,struct nlmsghdr const*,int,struct nft_table*,int *,struct nlattr const* const*) ;
 int nft_genmask_next (struct net*) ;
 struct nft_table* nft_table_lookup (struct net*,struct nlattr const*,int,int ) ;
 int nft_trans_table_add (struct nft_ctx*,int ) ;
 int nla_get_be32 (struct nlattr const* const) ;
 struct nft_table* nla_strdup (struct nlattr const*,int ) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;
 int ntohl (int ) ;
 int rhltable_destroy (int *) ;
 int rhltable_init (int *,int *) ;
 scalar_t__ table_handle ;

__attribute__((used)) static int nf_tables_newtable(struct net *net, struct sock *nlsk,
         struct sk_buff *skb, const struct nlmsghdr *nlh,
         const struct nlattr * const nla[],
         struct netlink_ext_ack *extack)
{
 const struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 u8 genmask = nft_genmask_next(net);
 int family = nfmsg->nfgen_family;
 const struct nlattr *attr;
 struct nft_table *table;
 u32 flags = 0;
 struct nft_ctx ctx;
 int err;

 lockdep_assert_held(&net->nft.commit_mutex);
 attr = nla[NFTA_TABLE_NAME];
 table = nft_table_lookup(net, attr, family, genmask);
 if (IS_ERR(table)) {
  if (PTR_ERR(table) != -ENOENT)
   return PTR_ERR(table);
 } else {
  if (nlh->nlmsg_flags & NLM_F_EXCL) {
   NL_SET_BAD_ATTR(extack, attr);
   return -EEXIST;
  }
  if (nlh->nlmsg_flags & NLM_F_REPLACE)
   return -EOPNOTSUPP;

  nft_ctx_init(&ctx, net, skb, nlh, family, table, ((void*)0), nla);
  return nf_tables_updtable(&ctx);
 }

 if (nla[NFTA_TABLE_FLAGS]) {
  flags = ntohl(nla_get_be32(nla[NFTA_TABLE_FLAGS]));
  if (flags & ~NFT_TABLE_F_DORMANT)
   return -EINVAL;
 }

 err = -ENOMEM;
 table = kzalloc(sizeof(*table), GFP_KERNEL);
 if (table == ((void*)0))
  goto err_kzalloc;

 table->name = nla_strdup(attr, GFP_KERNEL);
 if (table->name == ((void*)0))
  goto err_strdup;

 err = rhltable_init(&table->chains_ht, &nft_chain_ht_params);
 if (err)
  goto err_chain_ht;

 INIT_LIST_HEAD(&table->chains);
 INIT_LIST_HEAD(&table->sets);
 INIT_LIST_HEAD(&table->objects);
 INIT_LIST_HEAD(&table->flowtables);
 table->family = family;
 table->flags = flags;
 table->handle = ++table_handle;

 nft_ctx_init(&ctx, net, skb, nlh, family, table, ((void*)0), nla);
 err = nft_trans_table_add(&ctx, NFT_MSG_NEWTABLE);
 if (err < 0)
  goto err_trans;

 list_add_tail_rcu(&table->list, &net->nft.tables);
 return 0;
err_trans:
 rhltable_destroy(&table->chains_ht);
err_chain_ht:
 kfree(table->name);
err_strdup:
 kfree(table);
err_kzalloc:
 return err;
}
