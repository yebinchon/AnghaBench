
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct nft_quota {int quota; int consumed; } ;


 scalar_t__ atomic64_add_return (int ,int *) ;
 scalar_t__ atomic64_read (int *) ;

__attribute__((used)) static inline bool nft_overquota(struct nft_quota *priv,
     const struct sk_buff *skb)
{
 return atomic64_add_return(skb->len, &priv->consumed) >=
        atomic64_read(&priv->quota);
}
