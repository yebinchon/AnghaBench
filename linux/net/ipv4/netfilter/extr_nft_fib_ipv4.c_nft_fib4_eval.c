
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {int code; } ;
struct nft_regs {TYPE_1__ verdict; scalar_t__* data; } ;
struct nft_pktinfo {TYPE_2__* skb; } ;
struct nft_fib {size_t dreg; int flags; } ;
struct nft_expr {int dummy; } ;
struct net_device {int dummy; } ;
struct iphdr {int tos; int daddr; int saddr; } ;
struct flowi4 {int flowi4_tos; void* saddr; int daddr; int flowi4_mark; int flowi4_iif; int flowi4_scope; } ;
struct fib_result {int type; int fi; } ;
typedef int _iph ;
struct TYPE_6__ {int mark; struct net_device const* dev; } ;


 int DSCP_BITS ;
 int FIB_LOOKUP_IGNORE_LINKSTATE ;
 struct net_device* FIB_RES_DEV (struct fib_result) ;
 int LOOPBACK_IFINDEX ;
 int NFTA_FIB_F_DADDR ;
 int NFTA_FIB_F_IIF ;
 int NFTA_FIB_F_MARK ;
 int NFTA_FIB_F_OIF ;
 int NFT_BREAK ;
 scalar_t__ NF_INET_PRE_ROUTING ;


 int RT_SCOPE_UNIVERSE ;
 int fib_info_nh_uses_dev (int ,struct net_device const*) ;
 scalar_t__ fib_lookup (int ,struct flowi4*,struct fib_result*,int ) ;
 void* get_saddr (int ) ;
 scalar_t__ ipv4_is_lbcast (int ) ;
 scalar_t__ ipv4_is_local_multicast (int ) ;
 scalar_t__ ipv4_is_zeronet (int ) ;
 struct nft_fib* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nft_fib_is_loopback (TYPE_2__*,struct net_device const*) ;
 int nft_fib_store_result (scalar_t__*,struct nft_fib const*,struct net_device const*) ;
 scalar_t__ nft_hook (struct nft_pktinfo const*) ;
 struct net_device const* nft_in (struct nft_pktinfo const*) ;
 int nft_net (struct nft_pktinfo const*) ;
 struct net_device* nft_out (struct nft_pktinfo const*) ;
 struct iphdr* skb_header_pointer (TYPE_2__*,int,int,struct iphdr*) ;
 int skb_network_offset (TYPE_2__*) ;

void nft_fib4_eval(const struct nft_expr *expr, struct nft_regs *regs,
     const struct nft_pktinfo *pkt)
{
 const struct nft_fib *priv = nft_expr_priv(expr);
 int noff = skb_network_offset(pkt->skb);
 u32 *dest = &regs->data[priv->dreg];
 struct iphdr *iph, _iph;
 struct fib_result res;
 struct flowi4 fl4 = {
  .flowi4_scope = RT_SCOPE_UNIVERSE,
  .flowi4_iif = LOOPBACK_IFINDEX,
 };
 const struct net_device *oif;
 const struct net_device *found;
 if (priv->flags & NFTA_FIB_F_OIF)
  oif = nft_out(pkt);
 else if (priv->flags & NFTA_FIB_F_IIF)
  oif = nft_in(pkt);
 else
  oif = ((void*)0);

 if (nft_hook(pkt) == NF_INET_PRE_ROUTING &&
     nft_fib_is_loopback(pkt->skb, nft_in(pkt))) {
  nft_fib_store_result(dest, priv, nft_in(pkt));
  return;
 }

 iph = skb_header_pointer(pkt->skb, noff, sizeof(_iph), &_iph);
 if (!iph) {
  regs->verdict.code = NFT_BREAK;
  return;
 }

 if (ipv4_is_zeronet(iph->saddr)) {
  if (ipv4_is_lbcast(iph->daddr) ||
      ipv4_is_local_multicast(iph->daddr)) {
   nft_fib_store_result(dest, priv, pkt->skb->dev);
   return;
  }
 }

 if (priv->flags & NFTA_FIB_F_MARK)
  fl4.flowi4_mark = pkt->skb->mark;

 fl4.flowi4_tos = iph->tos & DSCP_BITS;

 if (priv->flags & NFTA_FIB_F_DADDR) {
  fl4.daddr = iph->daddr;
  fl4.saddr = get_saddr(iph->saddr);
 } else {
  fl4.daddr = iph->saddr;
  fl4.saddr = get_saddr(iph->daddr);
 }

 *dest = 0;

 if (fib_lookup(nft_net(pkt), &fl4, &res, FIB_LOOKUP_IGNORE_LINKSTATE))
  return;

 switch (res.type) {
 case 128:
  break;
 case 129:
  return;
 default:
  break;
 }

       if (!oif) {
               found = FIB_RES_DEV(res);
 } else {
  if (!fib_info_nh_uses_dev(res.fi, oif))
   return;

  found = oif;
 }

 nft_fib_store_result(dest, priv, found);
}
