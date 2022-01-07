
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; } ;
struct nft_regs {TYPE_1__ verdict; } ;
struct nft_quota {int dummy; } ;
struct nft_pktinfo {int skb; } ;


 int NFT_BREAK ;
 int nft_overquota (struct nft_quota*,int ) ;
 int nft_quota_invert (struct nft_quota*) ;

__attribute__((used)) static inline void nft_quota_do_eval(struct nft_quota *priv,
         struct nft_regs *regs,
         const struct nft_pktinfo *pkt)
{
 if (nft_overquota(priv, pkt->skb) ^ nft_quota_invert(priv))
  regs->verdict.code = NFT_BREAK;
}
