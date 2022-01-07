
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_reject {int type; int icmp_code; } ;
struct TYPE_2__ {int code; } ;
struct nft_regs {TYPE_1__ verdict; } ;
struct nft_pktinfo {int skb; } ;
struct nft_expr {int dummy; } ;




 int NF_DROP ;
 int nf_send_reset6 (int ,int ,int ) ;
 int nf_send_unreach6 (int ,int ,int ,int ) ;
 struct nft_reject* nft_expr_priv (struct nft_expr const*) ;
 int nft_hook (struct nft_pktinfo const*) ;
 int nft_net (struct nft_pktinfo const*) ;

__attribute__((used)) static void nft_reject_ipv6_eval(const struct nft_expr *expr,
     struct nft_regs *regs,
     const struct nft_pktinfo *pkt)
{
 struct nft_reject *priv = nft_expr_priv(expr);

 switch (priv->type) {
 case 129:
  nf_send_unreach6(nft_net(pkt), pkt->skb, priv->icmp_code,
     nft_hook(pkt));
  break;
 case 128:
  nf_send_reset6(nft_net(pkt), pkt->skb, nft_hook(pkt));
  break;
 default:
  break;
 }

 regs->verdict.code = NF_DROP;
}
