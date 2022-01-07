
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nlattr {int dummy; } ;
struct nft_queue {int queuenum; int queues_total; int flags; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EINVAL ;
 int ERANGE ;
 size_t NFTA_QUEUE_FLAGS ;
 size_t NFTA_QUEUE_NUM ;
 size_t NFTA_QUEUE_TOTAL ;
 int NFT_QUEUE_FLAG_MASK ;
 scalar_t__ U16_MAX ;
 struct nft_queue* nft_expr_priv (struct nft_expr const*) ;
 int nla_get_be16 (struct nlattr const* const) ;
 void* ntohs (int ) ;

__attribute__((used)) static int nft_queue_init(const struct nft_ctx *ctx,
     const struct nft_expr *expr,
     const struct nlattr * const tb[])
{
 struct nft_queue *priv = nft_expr_priv(expr);
 u32 maxid;

 priv->queuenum = ntohs(nla_get_be16(tb[NFTA_QUEUE_NUM]));

 if (tb[NFTA_QUEUE_TOTAL])
  priv->queues_total = ntohs(nla_get_be16(tb[NFTA_QUEUE_TOTAL]));
 else
  priv->queues_total = 1;

 if (priv->queues_total == 0)
  return -EINVAL;

 maxid = priv->queues_total - 1 + priv->queuenum;
 if (maxid > U16_MAX)
  return -ERANGE;

 if (tb[NFTA_QUEUE_FLAGS]) {
  priv->flags = ntohs(nla_get_be16(tb[NFTA_QUEUE_FLAGS]));
  if (priv->flags & ~NFT_QUEUE_FLAG_MASK)
   return -EINVAL;
 }
 return 0;
}
