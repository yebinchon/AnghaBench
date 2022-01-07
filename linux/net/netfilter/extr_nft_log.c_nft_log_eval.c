
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nft_regs {int dummy; } ;
struct nft_pktinfo {int skb; } ;
struct TYPE_4__ {scalar_t__ level; } ;
struct TYPE_5__ {TYPE_1__ log; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ u; } ;
struct nft_log {int prefix; TYPE_3__ loginfo; } ;
struct nft_expr {int dummy; } ;


 scalar_t__ NFT_LOGLEVEL_AUDIT ;
 scalar_t__ NF_LOG_TYPE_LOG ;
 int nf_log_packet (int ,int ,int ,int ,int ,int ,TYPE_3__*,char*,int ) ;
 struct nft_log* nft_expr_priv (struct nft_expr const*) ;
 int nft_hook (struct nft_pktinfo const*) ;
 int nft_in (struct nft_pktinfo const*) ;
 int nft_log_eval_audit (struct nft_pktinfo const*) ;
 int nft_net (struct nft_pktinfo const*) ;
 int nft_out (struct nft_pktinfo const*) ;
 int nft_pf (struct nft_pktinfo const*) ;

__attribute__((used)) static void nft_log_eval(const struct nft_expr *expr,
    struct nft_regs *regs,
    const struct nft_pktinfo *pkt)
{
 const struct nft_log *priv = nft_expr_priv(expr);

 if (priv->loginfo.type == NF_LOG_TYPE_LOG &&
     priv->loginfo.u.log.level == NFT_LOGLEVEL_AUDIT) {
  nft_log_eval_audit(pkt);
  return;
 }

 nf_log_packet(nft_net(pkt), nft_pf(pkt), nft_hook(pkt), pkt->skb,
        nft_in(pkt), nft_out(pkt), &priv->loginfo, "%s",
        priv->prefix);
}
