
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ protocol; } ;
struct TYPE_2__ {int code; } ;
struct nft_regs {int* data; TYPE_1__ verdict; } ;
struct nft_pktinfo {struct sk_buff* skb; } ;
struct nft_exthdr {size_t dreg; int flags; unsigned int offset; size_t len; int type; } ;
struct nft_expr {int dummy; } ;


 int ETH_P_IP ;
 int NFT_BREAK ;
 int NFT_EXTHDR_F_PRESENT ;
 size_t NFT_REG32_SIZE ;
 scalar_t__ htons (int ) ;
 int ipv4_find_option (int ,struct sk_buff*,unsigned int*,int ) ;
 struct nft_exthdr* nft_expr_priv (struct nft_expr const*) ;
 int nft_net (struct nft_pktinfo const*) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,unsigned int,int*,size_t) ;

__attribute__((used)) static void nft_exthdr_ipv4_eval(const struct nft_expr *expr,
     struct nft_regs *regs,
     const struct nft_pktinfo *pkt)
{
 struct nft_exthdr *priv = nft_expr_priv(expr);
 u32 *dest = &regs->data[priv->dreg];
 struct sk_buff *skb = pkt->skb;
 unsigned int offset;
 int err;

 if (skb->protocol != htons(ETH_P_IP))
  goto err;

 err = ipv4_find_option(nft_net(pkt), skb, &offset, priv->type);
 if (priv->flags & NFT_EXTHDR_F_PRESENT) {
  *dest = (err >= 0);
  return;
 } else if (err < 0) {
  goto err;
 }
 offset += priv->offset;

 dest[priv->len / NFT_REG32_SIZE] = 0;
 if (skb_copy_bits(pkt->skb, offset, dest, priv->len) < 0)
  goto err;
 return;
err:
 regs->verdict.code = NFT_BREAK;
}
