
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct nft_queue {int flags; int sreg_qnum; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NFTA_QUEUE_FLAGS ;
 size_t NFTA_QUEUE_SREG_QNUM ;
 int NFT_QUEUE_FLAG_CPU_FANOUT ;
 int NFT_QUEUE_FLAG_MASK ;
 struct nft_queue* nft_expr_priv (struct nft_expr const*) ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_validate_register_load (int ,int) ;
 int nla_get_be16 (struct nlattr const* const) ;
 int ntohs (int ) ;

__attribute__((used)) static int nft_queue_sreg_init(const struct nft_ctx *ctx,
          const struct nft_expr *expr,
          const struct nlattr * const tb[])
{
 struct nft_queue *priv = nft_expr_priv(expr);
 int err;

 priv->sreg_qnum = nft_parse_register(tb[NFTA_QUEUE_SREG_QNUM]);
 err = nft_validate_register_load(priv->sreg_qnum, sizeof(u32));
 if (err < 0)
  return err;

 if (tb[NFTA_QUEUE_FLAGS]) {
  priv->flags = ntohs(nla_get_be16(tb[NFTA_QUEUE_FLAGS]));
  if (priv->flags & ~NFT_QUEUE_FLAG_MASK)
   return -EINVAL;
  if (priv->flags & NFT_QUEUE_FLAG_CPU_FANOUT)
   return -EOPNOTSUPP;
 }

 return 0;
}
