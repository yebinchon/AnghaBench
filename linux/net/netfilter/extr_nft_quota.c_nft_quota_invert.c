
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_quota {int flags; } ;


 int NFT_QUOTA_F_INV ;

__attribute__((used)) static inline bool nft_quota_invert(struct nft_quota *priv)
{
 return priv->flags & NFT_QUOTA_F_INV;
}
