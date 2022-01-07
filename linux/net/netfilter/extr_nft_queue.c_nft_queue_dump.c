
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_queue {int flags; int queues_total; int queuenum; } ;
struct nft_expr {int dummy; } ;


 int NFTA_QUEUE_FLAGS ;
 int NFTA_QUEUE_NUM ;
 int NFTA_QUEUE_TOTAL ;
 int htons (int ) ;
 struct nft_queue* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_queue_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_queue *priv = nft_expr_priv(expr);

 if (nla_put_be16(skb, NFTA_QUEUE_NUM, htons(priv->queuenum)) ||
     nla_put_be16(skb, NFTA_QUEUE_TOTAL, htons(priv->queues_total)) ||
     nla_put_be16(skb, NFTA_QUEUE_FLAGS, htons(priv->flags)))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -1;
}
