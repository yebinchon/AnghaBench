
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union nft_entry {int dummy; } nft_entry ;
typedef int u16 ;
struct xt_tgchk_param {int dummy; } ;
struct xt_target {int target; } ;
struct nlattr {int dummy; } ;
struct nft_expr {TYPE_1__* ops; } ;
struct nft_ctx {scalar_t__* nla; } ;
struct TYPE_2__ {struct xt_target* data; } ;


 int EINVAL ;
 size_t NFTA_RULE_COMPAT ;
 size_t NFTA_TARGET_INFO ;
 size_t XT_ALIGN (int ) ;
 void* nft_expr_priv (struct nft_expr const*) ;
 int nft_parse_compat (scalar_t__,int *,int*) ;
 int nft_target_set_tgchk_param (struct xt_tgchk_param*,struct nft_ctx const*,struct xt_target*,void*,union nft_entry*,int ,int) ;
 int nla_data (struct nlattr const* const) ;
 int nla_len (struct nlattr const* const) ;
 int target_compat_from_user (struct xt_target*,int ,void*) ;
 int xt_check_target (struct xt_tgchk_param*,size_t,int ,int) ;

__attribute__((used)) static int
nft_target_init(const struct nft_ctx *ctx, const struct nft_expr *expr,
  const struct nlattr * const tb[])
{
 void *info = nft_expr_priv(expr);
 struct xt_target *target = expr->ops->data;
 struct xt_tgchk_param par;
 size_t size = XT_ALIGN(nla_len(tb[NFTA_TARGET_INFO]));
 u16 proto = 0;
 bool inv = 0;
 union nft_entry e = {};
 int ret;

 target_compat_from_user(target, nla_data(tb[NFTA_TARGET_INFO]), info);

 if (ctx->nla[NFTA_RULE_COMPAT]) {
  ret = nft_parse_compat(ctx->nla[NFTA_RULE_COMPAT], &proto, &inv);
  if (ret < 0)
   return ret;
 }

 nft_target_set_tgchk_param(&par, ctx, target, info, &e, proto, inv);

 ret = xt_check_target(&par, size, proto, inv);
 if (ret < 0)
  return ret;


 if (!target->target)
  return -EINVAL;

 return 0;
}
