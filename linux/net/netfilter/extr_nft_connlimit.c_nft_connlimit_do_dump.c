
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_connlimit {scalar_t__ invert; int limit; } ;


 int NFTA_CONNLIMIT_COUNT ;
 int NFTA_CONNLIMIT_FLAGS ;
 int NFT_CONNLIMIT_F_INV ;
 int htonl (int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_connlimit_do_dump(struct sk_buff *skb,
     struct nft_connlimit *priv)
{
 if (nla_put_be32(skb, NFTA_CONNLIMIT_COUNT, htonl(priv->limit)))
  goto nla_put_failure;
 if (priv->invert &&
     nla_put_be32(skb, NFTA_CONNLIMIT_FLAGS, htonl(NFT_CONNLIMIT_F_INV)))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -1;
}
