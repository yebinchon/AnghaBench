
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {struct nft_table const* name; struct nft_table const* table; } ;
typedef struct nft_table {int owner; TYPE_2__* ops; TYPE_1__ key; int list; int use; int objects; int rhlhead; int handle; } const nft_table ;
struct nft_object_type {int owner; TYPE_2__* ops; TYPE_1__ key; int list; int use; int objects; int rhlhead; int handle; } ;
typedef struct nft_object {int owner; TYPE_2__* ops; TYPE_1__ key; int list; int use; int objects; int rhlhead; int handle; } const nft_object ;
struct nft_ctx {int dummy; } ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int (* destroy ) (struct nft_ctx*,struct nft_table const*) ;} ;


 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct nft_table const*) ;
 size_t NFTA_OBJ_DATA ;
 size_t NFTA_OBJ_NAME ;
 size_t NFTA_OBJ_TABLE ;
 size_t NFTA_OBJ_TYPE ;
 int NFT_MSG_NEWOBJ ;
 int NLM_F_EXCL ;
 int NLM_F_REPLACE ;
 int NL_SET_BAD_ATTR (struct netlink_ext_ack*,struct nlattr const* const) ;
 int PTR_ERR (struct nft_table const*) ;
 int kfree (struct nft_table const*) ;
 int list_add_tail_rcu (int *,int *) ;
 int module_put (int ) ;
 int nf_tables_alloc_handle (struct nft_table const*) ;
 int nf_tables_updobj (struct nft_ctx*,struct nft_table const*,struct nlattr const* const,struct nft_table const*) ;
 int nft_ctx_init (struct nft_ctx*,struct net*,struct sk_buff*,struct nlmsghdr const*,int,struct nft_table const*,int *,struct nlattr const* const*) ;
 int nft_genmask_next (struct net*) ;
 struct nft_table* nft_obj_init (struct nft_ctx*,struct nft_table const*,struct nlattr const* const) ;
 struct nft_table* nft_obj_lookup (struct net*,struct nft_table const*,struct nlattr const* const,int ,int ) ;
 struct nft_table* nft_obj_type_get (struct net*,int ) ;
 int nft_objname_ht ;
 int nft_objname_ht_params ;
 struct nft_table* nft_table_lookup (struct net*,struct nlattr const* const,int,int ) ;
 int nft_trans_obj_add (struct nft_ctx*,int ,struct nft_table const*) ;
 int nla_get_be32 (struct nlattr const* const) ;
 struct nft_table const* nla_strdup (struct nlattr const* const,int ) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;
 int ntohl (int ) ;
 int rhltable_insert (int *,int *,int ) ;
 int stub1 (struct nft_ctx*,struct nft_table const*) ;

__attribute__((used)) static int nf_tables_newobj(struct net *net, struct sock *nlsk,
       struct sk_buff *skb, const struct nlmsghdr *nlh,
       const struct nlattr * const nla[],
       struct netlink_ext_ack *extack)
{
 const struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 const struct nft_object_type *type;
 u8 genmask = nft_genmask_next(net);
 int family = nfmsg->nfgen_family;
 struct nft_table *table;
 struct nft_object *obj;
 struct nft_ctx ctx;
 u32 objtype;
 int err;

 if (!nla[NFTA_OBJ_TYPE] ||
     !nla[NFTA_OBJ_NAME] ||
     !nla[NFTA_OBJ_DATA])
  return -EINVAL;

 table = nft_table_lookup(net, nla[NFTA_OBJ_TABLE], family, genmask);
 if (IS_ERR(table)) {
  NL_SET_BAD_ATTR(extack, nla[NFTA_OBJ_TABLE]);
  return PTR_ERR(table);
 }

 objtype = ntohl(nla_get_be32(nla[NFTA_OBJ_TYPE]));
 obj = nft_obj_lookup(net, table, nla[NFTA_OBJ_NAME], objtype, genmask);
 if (IS_ERR(obj)) {
  err = PTR_ERR(obj);
  if (err != -ENOENT) {
   NL_SET_BAD_ATTR(extack, nla[NFTA_OBJ_NAME]);
   return err;
  }
 } else {
  if (nlh->nlmsg_flags & NLM_F_EXCL) {
   NL_SET_BAD_ATTR(extack, nla[NFTA_OBJ_NAME]);
   return -EEXIST;
  }
  if (nlh->nlmsg_flags & NLM_F_REPLACE)
   return -EOPNOTSUPP;

  type = nft_obj_type_get(net, objtype);
  nft_ctx_init(&ctx, net, skb, nlh, family, table, ((void*)0), nla);

  return nf_tables_updobj(&ctx, type, nla[NFTA_OBJ_DATA], obj);
 }

 nft_ctx_init(&ctx, net, skb, nlh, family, table, ((void*)0), nla);

 type = nft_obj_type_get(net, objtype);
 if (IS_ERR(type))
  return PTR_ERR(type);

 obj = nft_obj_init(&ctx, type, nla[NFTA_OBJ_DATA]);
 if (IS_ERR(obj)) {
  err = PTR_ERR(obj);
  goto err1;
 }
 obj->key.table = table;
 obj->handle = nf_tables_alloc_handle(table);

 obj->key.name = nla_strdup(nla[NFTA_OBJ_NAME], GFP_KERNEL);
 if (!obj->key.name) {
  err = -ENOMEM;
  goto err2;
 }

 err = nft_trans_obj_add(&ctx, NFT_MSG_NEWOBJ, obj);
 if (err < 0)
  goto err3;

 err = rhltable_insert(&nft_objname_ht, &obj->rhlhead,
         nft_objname_ht_params);
 if (err < 0)
  goto err4;

 list_add_tail_rcu(&obj->list, &table->objects);
 table->use++;
 return 0;
err4:

 INIT_LIST_HEAD(&obj->list);
 return err;
err3:
 kfree(obj->key.name);
err2:
 if (obj->ops->destroy)
  obj->ops->destroy(&ctx, obj);
 kfree(obj);
err1:
 module_put(type->owner);
 return err;
}
