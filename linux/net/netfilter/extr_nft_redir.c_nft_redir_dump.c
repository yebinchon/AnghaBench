
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_redir {scalar_t__ flags; scalar_t__ sreg_proto_max; scalar_t__ sreg_proto_min; } ;
struct nft_expr {int dummy; } ;


 int NFTA_REDIR_FLAGS ;
 int NFTA_REDIR_REG_PROTO_MAX ;
 int NFTA_REDIR_REG_PROTO_MIN ;
 int htonl (scalar_t__) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,scalar_t__) ;
 struct nft_redir* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_redir_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_redir *priv = nft_expr_priv(expr);

 if (priv->sreg_proto_min) {
  if (nft_dump_register(skb, NFTA_REDIR_REG_PROTO_MIN,
          priv->sreg_proto_min))
   goto nla_put_failure;
  if (nft_dump_register(skb, NFTA_REDIR_REG_PROTO_MAX,
          priv->sreg_proto_max))
   goto nla_put_failure;
 }

 if (priv->flags != 0 &&
     nla_put_be32(skb, NFTA_REDIR_FLAGS, htonl(priv->flags)))
   goto nla_put_failure;

 return 0;

nla_put_failure:
 return -1;
}
