
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_exthdr {int dreg; } ;
struct nft_expr {int dummy; } ;


 int NFTA_EXTHDR_DREG ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_exthdr* nft_expr_priv (struct nft_expr const*) ;
 int nft_exthdr_dump_common (struct sk_buff*,struct nft_exthdr const*) ;

__attribute__((used)) static int nft_exthdr_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_exthdr *priv = nft_expr_priv(expr);

 if (nft_dump_register(skb, NFTA_EXTHDR_DREG, priv->dreg))
  return -1;

 return nft_exthdr_dump_common(skb, priv);
}
