
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_exthdr {int op; int flags; int len; int offset; int type; } ;


 int NFTA_EXTHDR_FLAGS ;
 int NFTA_EXTHDR_LEN ;
 int NFTA_EXTHDR_OFFSET ;
 int NFTA_EXTHDR_OP ;
 int NFTA_EXTHDR_TYPE ;
 int htonl (int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_exthdr_dump_common(struct sk_buff *skb, const struct nft_exthdr *priv)
{
 if (nla_put_u8(skb, NFTA_EXTHDR_TYPE, priv->type))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_EXTHDR_OFFSET, htonl(priv->offset)))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_EXTHDR_LEN, htonl(priv->len)))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_EXTHDR_FLAGS, htonl(priv->flags)))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_EXTHDR_OP, htonl(priv->op)))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}
