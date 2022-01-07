
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int code; } ;
struct nft_regs {TYPE_1__ verdict; int * data; } ;
struct nft_pktinfo {int skb; } ;
struct nft_fib {size_t dreg; int flags; } ;
struct nft_expr {int dummy; } ;
struct net_device {int dummy; } ;
struct iphdr {int saddr; int daddr; } ;
typedef int _iph ;
typedef int __be32 ;


 int NFTA_FIB_F_DADDR ;
 int NFTA_FIB_F_IIF ;
 int NFTA_FIB_F_OIF ;
 int NFT_BREAK ;
 int inet_dev_addr_type (int ,struct net_device const*,int ) ;
 struct nft_fib* nft_expr_priv (struct nft_expr const*) ;
 struct net_device* nft_in (struct nft_pktinfo const*) ;
 int nft_net (struct nft_pktinfo const*) ;
 struct net_device* nft_out (struct nft_pktinfo const*) ;
 struct iphdr* skb_header_pointer (int ,int,int,struct iphdr*) ;
 int skb_network_offset (int ) ;

void nft_fib4_eval_type(const struct nft_expr *expr, struct nft_regs *regs,
   const struct nft_pktinfo *pkt)
{
 const struct nft_fib *priv = nft_expr_priv(expr);
 int noff = skb_network_offset(pkt->skb);
 u32 *dst = &regs->data[priv->dreg];
 const struct net_device *dev = ((void*)0);
 struct iphdr *iph, _iph;
 __be32 addr;

 if (priv->flags & NFTA_FIB_F_IIF)
  dev = nft_in(pkt);
 else if (priv->flags & NFTA_FIB_F_OIF)
  dev = nft_out(pkt);

 iph = skb_header_pointer(pkt->skb, noff, sizeof(_iph), &_iph);
 if (!iph) {
  regs->verdict.code = NFT_BREAK;
  return;
 }

 if (priv->flags & NFTA_FIB_F_DADDR)
  addr = iph->daddr;
 else
  addr = iph->saddr;

 *dst = inet_dev_addr_type(nft_net(pkt), dev, addr);
}
