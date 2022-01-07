
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ code; } ;
struct nft_regs {TYPE_1__ verdict; } ;
struct nft_queue {int queues_total; int flags; scalar_t__ queuenum; } ;
struct nft_pktinfo {int skb; } ;
struct nft_expr {int dummy; } ;


 int NFT_QUEUE_FLAG_BYPASS ;
 int NFT_QUEUE_FLAG_CPU_FANOUT ;
 scalar_t__ NF_QUEUE_NR (scalar_t__) ;
 scalar_t__ NF_VERDICT_FLAG_QUEUE_BYPASS ;
 int jhash_initval ;
 scalar_t__ nfqueue_hash (int ,scalar_t__,int,int ,int ) ;
 struct nft_queue* nft_expr_priv (struct nft_expr const*) ;
 int nft_pf (struct nft_pktinfo const*) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static void nft_queue_eval(const struct nft_expr *expr,
      struct nft_regs *regs,
      const struct nft_pktinfo *pkt)
{
 struct nft_queue *priv = nft_expr_priv(expr);
 u32 queue = priv->queuenum;
 u32 ret;

 if (priv->queues_total > 1) {
  if (priv->flags & NFT_QUEUE_FLAG_CPU_FANOUT) {
   int cpu = raw_smp_processor_id();

   queue = priv->queuenum + cpu % priv->queues_total;
  } else {
   queue = nfqueue_hash(pkt->skb, queue,
          priv->queues_total, nft_pf(pkt),
          jhash_initval);
  }
 }

 ret = NF_QUEUE_NR(queue);
 if (priv->flags & NFT_QUEUE_FLAG_BYPASS)
  ret |= NF_VERDICT_FLAG_QUEUE_BYPASS;

 regs->verdict.code = ret;
}
