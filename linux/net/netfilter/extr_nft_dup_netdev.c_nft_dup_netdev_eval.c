
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_regs {int* data; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_dup_netdev {size_t sreg_dev; } ;


 int nf_dup_netdev_egress (struct nft_pktinfo const*,int) ;
 struct nft_dup_netdev* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_dup_netdev_eval(const struct nft_expr *expr,
    struct nft_regs *regs,
    const struct nft_pktinfo *pkt)
{
 struct nft_dup_netdev *priv = nft_expr_priv(expr);
 int oif = regs->data[priv->sreg_dev];

 nf_dup_netdev_egress(pkt, oif);
}
