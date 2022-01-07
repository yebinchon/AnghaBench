
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_fwd_neigh {int nfproto; int sreg_addr; int sreg_dev; } ;
struct nft_expr {int dummy; } ;


 int NFTA_FWD_NFPROTO ;
 int NFTA_FWD_SREG_ADDR ;
 int NFTA_FWD_SREG_DEV ;
 int htonl (int ) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_fwd_neigh* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_fwd_neigh_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 struct nft_fwd_neigh *priv = nft_expr_priv(expr);

 if (nft_dump_register(skb, NFTA_FWD_SREG_DEV, priv->sreg_dev) ||
     nft_dump_register(skb, NFTA_FWD_SREG_ADDR, priv->sreg_addr) ||
     nla_put_be32(skb, NFTA_FWD_NFPROTO, htonl(priv->nfproto)))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -1;
}
