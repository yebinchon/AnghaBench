
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int code; } ;
struct nft_regs {TYPE_1__ verdict; int * data; } ;
struct nft_pktinfo {int skb; } ;
struct nft_fib {size_t dreg; } ;
struct nft_expr {int dummy; } ;
struct ipv6hdr {int dummy; } ;
typedef int _iph ;


 int NFT_BREAK ;
 int __nft_fib6_eval_type (struct nft_fib const*,struct nft_pktinfo const*,struct ipv6hdr*) ;
 struct nft_fib* nft_expr_priv (struct nft_expr const*) ;
 struct ipv6hdr* skb_header_pointer (int ,int,int,struct ipv6hdr*) ;
 int skb_network_offset (int ) ;

void nft_fib6_eval_type(const struct nft_expr *expr, struct nft_regs *regs,
   const struct nft_pktinfo *pkt)
{
 const struct nft_fib *priv = nft_expr_priv(expr);
 int noff = skb_network_offset(pkt->skb);
 u32 *dest = &regs->data[priv->dreg];
 struct ipv6hdr *iph, _iph;

 iph = skb_header_pointer(pkt->skb, noff, sizeof(_iph), &_iph);
 if (!iph) {
  regs->verdict.code = NFT_BREAK;
  return;
 }

 *dest = __nft_fib6_eval_type(priv, pkt, iph);
}
