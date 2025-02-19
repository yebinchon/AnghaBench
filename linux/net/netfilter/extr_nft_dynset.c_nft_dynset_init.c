
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct nlattr {int dummy; } ;
struct nft_set {int flags; scalar_t__ dtype; int size; scalar_t__ timeout; TYPE_3__* ops; int dlen; int klen; } ;
struct nft_expr {int dummy; } ;
struct nft_dynset {int invert; int op; struct nft_set* expr; struct nft_set* set; int binding; scalar_t__ timeout; int tmpl; void* sreg_data; void* sreg_key; } ;
struct nft_ctx {int table; TYPE_4__* net; } ;
struct TYPE_6__ {int commit_mutex; } ;
struct TYPE_9__ {TYPE_1__ nft; } ;
struct TYPE_8__ {int size; int (* gc_init ) (struct nft_set*) ;TYPE_2__* type; int * update; } ;
struct TYPE_7__ {int flags; } ;


 int EBUSY ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct nft_set*) ;
 size_t NFTA_DYNSET_EXPR ;
 size_t NFTA_DYNSET_FLAGS ;
 size_t NFTA_DYNSET_OP ;
 size_t NFTA_DYNSET_SET_ID ;
 size_t NFTA_DYNSET_SET_NAME ;
 size_t NFTA_DYNSET_SREG_DATA ;
 size_t NFTA_DYNSET_SREG_KEY ;
 size_t NFTA_DYNSET_TIMEOUT ;
 scalar_t__ NFT_DATA_VERDICT ;
 int NFT_DYNSET_F_INV ;



 int NFT_EXPR_GC ;
 int NFT_EXPR_STATEFUL ;
 int NFT_SET_CONSTANT ;
 int NFT_SET_EVAL ;
 int NFT_SET_EXT_DATA ;
 int NFT_SET_EXT_EXPIRATION ;
 int NFT_SET_EXT_EXPR ;
 int NFT_SET_EXT_KEY ;
 int NFT_SET_MAP ;
 int NFT_SET_TIMEOUT ;
 int PTR_ERR (struct nft_set*) ;
 int be64_to_cpu (int ) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int nf_tables_bind_set (struct nft_ctx const*,struct nft_set*,int *) ;
 int nft_expr_destroy (struct nft_ctx const*,struct nft_set*) ;
 struct nft_set* nft_expr_init (struct nft_ctx const*,struct nlattr const* const) ;
 struct nft_dynset* nft_expr_priv (struct nft_expr const*) ;
 int nft_genmask_next (TYPE_4__*) ;
 void* nft_parse_register (struct nlattr const* const) ;
 int nft_set_ext_add (int *,int ) ;
 int nft_set_ext_add_length (int *,int ,int ) ;
 int nft_set_ext_prepare (int *) ;
 struct nft_set* nft_set_lookup_global (TYPE_4__*,int ,struct nlattr const* const,struct nlattr const* const,int ) ;
 int nft_validate_register_load (void*,int ) ;
 int nla_get_be32 (struct nlattr const* const) ;
 int nla_get_be64 (struct nlattr const* const) ;
 void* ntohl (int ) ;
 int stub1 (struct nft_set*) ;

__attribute__((used)) static int nft_dynset_init(const struct nft_ctx *ctx,
      const struct nft_expr *expr,
      const struct nlattr * const tb[])
{
 struct nft_dynset *priv = nft_expr_priv(expr);
 u8 genmask = nft_genmask_next(ctx->net);
 struct nft_set *set;
 u64 timeout;
 int err;

 lockdep_assert_held(&ctx->net->nft.commit_mutex);

 if (tb[NFTA_DYNSET_SET_NAME] == ((void*)0) ||
     tb[NFTA_DYNSET_OP] == ((void*)0) ||
     tb[NFTA_DYNSET_SREG_KEY] == ((void*)0))
  return -EINVAL;

 if (tb[NFTA_DYNSET_FLAGS]) {
  u32 flags = ntohl(nla_get_be32(tb[NFTA_DYNSET_FLAGS]));

  if (flags & ~NFT_DYNSET_F_INV)
   return -EINVAL;
  if (flags & NFT_DYNSET_F_INV)
   priv->invert = 1;
 }

 set = nft_set_lookup_global(ctx->net, ctx->table,
        tb[NFTA_DYNSET_SET_NAME],
        tb[NFTA_DYNSET_SET_ID], genmask);
 if (IS_ERR(set))
  return PTR_ERR(set);

 if (set->ops->update == ((void*)0))
  return -EOPNOTSUPP;

 if (set->flags & NFT_SET_CONSTANT)
  return -EBUSY;

 priv->op = ntohl(nla_get_be32(tb[NFTA_DYNSET_OP]));
 switch (priv->op) {
 case 130:
 case 129:
  break;
 case 128:
  if (!(set->flags & NFT_SET_TIMEOUT))
   return -EOPNOTSUPP;
  break;
 default:
  return -EOPNOTSUPP;
 }

 timeout = 0;
 if (tb[NFTA_DYNSET_TIMEOUT] != ((void*)0)) {
  if (!(set->flags & NFT_SET_TIMEOUT))
   return -EINVAL;
  timeout = msecs_to_jiffies(be64_to_cpu(nla_get_be64(
      tb[NFTA_DYNSET_TIMEOUT])));
 }

 priv->sreg_key = nft_parse_register(tb[NFTA_DYNSET_SREG_KEY]);
 err = nft_validate_register_load(priv->sreg_key, set->klen);
 if (err < 0)
  return err;

 if (tb[NFTA_DYNSET_SREG_DATA] != ((void*)0)) {
  if (!(set->flags & NFT_SET_MAP))
   return -EINVAL;
  if (set->dtype == NFT_DATA_VERDICT)
   return -EOPNOTSUPP;

  priv->sreg_data = nft_parse_register(tb[NFTA_DYNSET_SREG_DATA]);
  err = nft_validate_register_load(priv->sreg_data, set->dlen);
  if (err < 0)
   return err;
 } else if (set->flags & NFT_SET_MAP)
  return -EINVAL;

 if (tb[NFTA_DYNSET_EXPR] != ((void*)0)) {
  if (!(set->flags & NFT_SET_EVAL))
   return -EINVAL;

  priv->expr = nft_expr_init(ctx, tb[NFTA_DYNSET_EXPR]);
  if (IS_ERR(priv->expr))
   return PTR_ERR(priv->expr);

  err = -EOPNOTSUPP;
  if (!(priv->expr->ops->type->flags & NFT_EXPR_STATEFUL))
   goto err1;

  if (priv->expr->ops->type->flags & NFT_EXPR_GC) {
   if (set->flags & NFT_SET_TIMEOUT)
    goto err1;
   if (!set->ops->gc_init)
    goto err1;
   set->ops->gc_init(set);
  }
 }

 nft_set_ext_prepare(&priv->tmpl);
 nft_set_ext_add_length(&priv->tmpl, NFT_SET_EXT_KEY, set->klen);
 if (set->flags & NFT_SET_MAP)
  nft_set_ext_add_length(&priv->tmpl, NFT_SET_EXT_DATA, set->dlen);
 if (priv->expr != ((void*)0))
  nft_set_ext_add_length(&priv->tmpl, NFT_SET_EXT_EXPR,
           priv->expr->ops->size);
 if (set->flags & NFT_SET_TIMEOUT) {
  if (timeout || set->timeout)
   nft_set_ext_add(&priv->tmpl, NFT_SET_EXT_EXPIRATION);
 }

 priv->timeout = timeout;

 err = nf_tables_bind_set(ctx, set, &priv->binding);
 if (err < 0)
  goto err1;

 if (set->size == 0)
  set->size = 0xffff;

 priv->set = set;
 return 0;

err1:
 if (priv->expr != ((void*)0))
  nft_expr_destroy(ctx, priv->expr);
 return err;
}
