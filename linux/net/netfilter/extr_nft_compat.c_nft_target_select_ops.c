
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xt_target {scalar_t__ targetsize; int me; int target; } ;
struct nlattr {int dummy; } ;
typedef struct nft_expr_ops {int eval; struct xt_target* data; int validate; int dump; int destroy; int init; int size; int * type; } const nft_expr_ops ;
struct nft_ctx {scalar_t__ family; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 struct nft_expr_ops const* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct xt_target*) ;
 scalar_t__ NFPROTO_BRIDGE ;
 size_t NFTA_TARGET_INFO ;
 size_t NFTA_TARGET_NAME ;
 size_t NFTA_TARGET_REV ;
 int NFT_EXPR_SIZE (int ) ;
 int XT_ALIGN (scalar_t__) ;
 char* XT_ERROR_TARGET ;
 char* XT_STANDARD_TARGET ;
 struct nft_expr_ops const* kzalloc (int,int ) ;
 int module_put (int ) ;
 int nft_target_destroy ;
 int nft_target_dump ;
 int nft_target_eval_bridge ;
 int nft_target_eval_xt ;
 int nft_target_init ;
 int nft_target_type ;
 int nft_target_validate ;
 char* nla_data (struct nlattr const* const) ;
 int nla_get_be32 (struct nlattr const* const) ;
 scalar_t__ nla_len (struct nlattr const* const) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 struct xt_target* xt_request_find_target (scalar_t__,char*,scalar_t__) ;

__attribute__((used)) static const struct nft_expr_ops *
nft_target_select_ops(const struct nft_ctx *ctx,
        const struct nlattr * const tb[])
{
 struct nft_expr_ops *ops;
 struct xt_target *target;
 char *tg_name;
 u32 rev, family;
 int err;

 if (tb[NFTA_TARGET_NAME] == ((void*)0) ||
     tb[NFTA_TARGET_REV] == ((void*)0) ||
     tb[NFTA_TARGET_INFO] == ((void*)0))
  return ERR_PTR(-EINVAL);

 tg_name = nla_data(tb[NFTA_TARGET_NAME]);
 rev = ntohl(nla_get_be32(tb[NFTA_TARGET_REV]));
 family = ctx->family;

 if (strcmp(tg_name, XT_ERROR_TARGET) == 0 ||
     strcmp(tg_name, XT_STANDARD_TARGET) == 0 ||
     strcmp(tg_name, "standard") == 0)
  return ERR_PTR(-EINVAL);

 target = xt_request_find_target(family, tg_name, rev);
 if (IS_ERR(target))
  return ERR_PTR(-ENOENT);

 if (!target->target) {
  err = -EINVAL;
  goto err;
 }

 if (target->targetsize > nla_len(tb[NFTA_TARGET_INFO])) {
  err = -EINVAL;
  goto err;
 }

 ops = kzalloc(sizeof(struct nft_expr_ops), GFP_KERNEL);
 if (!ops) {
  err = -ENOMEM;
  goto err;
 }

 ops->type = &nft_target_type;
 ops->size = NFT_EXPR_SIZE(XT_ALIGN(target->targetsize));
 ops->init = nft_target_init;
 ops->destroy = nft_target_destroy;
 ops->dump = nft_target_dump;
 ops->validate = nft_target_validate;
 ops->data = target;

 if (family == NFPROTO_BRIDGE)
  ops->eval = nft_target_eval_bridge;
 else
  ops->eval = nft_target_eval_xt;

 return ops;
err:
 module_put(target->me);
 return ERR_PTR(err);
}
