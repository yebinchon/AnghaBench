
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nft_tunnel {size_t dreg; int key; int mode; } ;
struct TYPE_4__ {void* code; } ;
struct nft_regs {TYPE_2__ verdict; int * data; } ;
struct nft_pktinfo {int skb; } ;
struct nft_expr {int dummy; } ;
struct TYPE_3__ {int tun_id; } ;
struct ip_tunnel_info {int mode; TYPE_1__ key; } ;


 int IP_TUNNEL_INFO_TX ;
 void* NFT_BREAK ;

 int NFT_TUNNEL_MODE_NONE ;
 int NFT_TUNNEL_MODE_RX ;
 int NFT_TUNNEL_MODE_TX ;

 int WARN_ON (int) ;
 struct nft_tunnel* nft_expr_priv (struct nft_expr const*) ;
 int nft_reg_store8 (int *,int) ;
 int ntohl (int ) ;
 struct ip_tunnel_info* skb_tunnel_info (int ) ;
 int tunnel_id_to_key32 (int ) ;

__attribute__((used)) static void nft_tunnel_get_eval(const struct nft_expr *expr,
    struct nft_regs *regs,
    const struct nft_pktinfo *pkt)
{
 const struct nft_tunnel *priv = nft_expr_priv(expr);
 u32 *dest = &regs->data[priv->dreg];
 struct ip_tunnel_info *tun_info;

 tun_info = skb_tunnel_info(pkt->skb);

 switch (priv->key) {
 case 128:
  if (!tun_info) {
   nft_reg_store8(dest, 0);
   return;
  }
  if (priv->mode == NFT_TUNNEL_MODE_NONE ||
      (priv->mode == NFT_TUNNEL_MODE_RX &&
       !(tun_info->mode & IP_TUNNEL_INFO_TX)) ||
      (priv->mode == NFT_TUNNEL_MODE_TX &&
       (tun_info->mode & IP_TUNNEL_INFO_TX)))
   nft_reg_store8(dest, 1);
  else
   nft_reg_store8(dest, 0);
  break;
 case 129:
  if (!tun_info) {
   regs->verdict.code = NFT_BREAK;
   return;
  }
  if (priv->mode == NFT_TUNNEL_MODE_NONE ||
      (priv->mode == NFT_TUNNEL_MODE_RX &&
       !(tun_info->mode & IP_TUNNEL_INFO_TX)) ||
      (priv->mode == NFT_TUNNEL_MODE_TX &&
       (tun_info->mode & IP_TUNNEL_INFO_TX)))
   *dest = ntohl(tunnel_id_to_key32(tun_info->key.tun_id));
  else
   regs->verdict.code = NFT_BREAK;
  break;
 default:
  WARN_ON(1);
  regs->verdict.code = NFT_BREAK;
 }
}
