
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; } ;
struct nft_regs {int* data; TYPE_1__ verdict; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_fwd_netdev {size_t sreg_dev; } ;
struct nft_expr {int dummy; } ;


 int NF_STOLEN ;
 int nf_fwd_netdev_egress (struct nft_pktinfo const*,int) ;
 struct nft_fwd_netdev* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_fwd_netdev_eval(const struct nft_expr *expr,
    struct nft_regs *regs,
    const struct nft_pktinfo *pkt)
{
 struct nft_fwd_netdev *priv = nft_expr_priv(expr);
 int oif = regs->data[priv->sreg_dev];

 nf_fwd_netdev_egress(pkt, oif);
 regs->verdict.code = NF_STOLEN;
}
