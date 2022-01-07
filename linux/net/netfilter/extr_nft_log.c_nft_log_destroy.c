
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ level; } ;
struct TYPE_4__ {TYPE_1__ log; } ;
struct nf_loginfo {int type; TYPE_2__ u; } ;
struct nft_log {scalar_t__ prefix; struct nf_loginfo loginfo; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int family; } ;


 scalar_t__ NFT_LOGLEVEL_AUDIT ;
 int kfree (scalar_t__) ;
 int nf_logger_put (int ,int ) ;
 struct nft_log* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nft_log_null_prefix ;

__attribute__((used)) static void nft_log_destroy(const struct nft_ctx *ctx,
       const struct nft_expr *expr)
{
 struct nft_log *priv = nft_expr_priv(expr);
 struct nf_loginfo *li = &priv->loginfo;

 if (priv->prefix != nft_log_null_prefix)
  kfree(priv->prefix);

 if (li->u.log.level == NFT_LOGLEVEL_AUDIT)
  return;

 nf_logger_put(ctx->family, li->type);
}
