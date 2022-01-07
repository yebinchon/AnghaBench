
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_socket {int dreg; int key; } ;
struct nft_expr {int dummy; } ;


 int NFTA_SOCKET_DREG ;
 int NFTA_SOCKET_KEY ;
 int htonl (int ) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_socket* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_socket_dump(struct sk_buff *skb,
      const struct nft_expr *expr)
{
 const struct nft_socket *priv = nft_expr_priv(expr);

 if (nla_put_u32(skb, NFTA_SOCKET_KEY, htonl(priv->key)))
  return -1;
 if (nft_dump_register(skb, NFTA_SOCKET_DREG, priv->dreg))
  return -1;
 return 0;
}
