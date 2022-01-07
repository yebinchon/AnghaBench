
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_tproxy {scalar_t__ sreg_port; scalar_t__ sreg_addr; int family; } ;
struct nft_expr {int dummy; } ;


 int NFTA_TPROXY_FAMILY ;
 int NFTA_TPROXY_REG_ADDR ;
 int NFTA_TPROXY_REG_PORT ;
 int htonl (int ) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,scalar_t__) ;
 struct nft_tproxy* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_tproxy_dump(struct sk_buff *skb,
      const struct nft_expr *expr)
{
 const struct nft_tproxy *priv = nft_expr_priv(expr);

 if (nla_put_be32(skb, NFTA_TPROXY_FAMILY, htonl(priv->family)))
  return -1;

 if (priv->sreg_addr &&
     nft_dump_register(skb, NFTA_TPROXY_REG_ADDR, priv->sreg_addr))
  return -1;

 if (priv->sreg_port &&
     nft_dump_register(skb, NFTA_TPROXY_REG_PORT, priv->sreg_port))
   return -1;

 return 0;
}
