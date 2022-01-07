
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_queue {int flags; int sreg_qnum; } ;
struct nft_expr {int dummy; } ;


 int NFTA_QUEUE_FLAGS ;
 int NFTA_QUEUE_SREG_QNUM ;
 int htons (int ) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_queue* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int
nft_queue_sreg_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_queue *priv = nft_expr_priv(expr);

 if (nft_dump_register(skb, NFTA_QUEUE_SREG_QNUM, priv->sreg_qnum) ||
     nla_put_be16(skb, NFTA_QUEUE_FLAGS, htons(priv->flags)))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -1;
}
