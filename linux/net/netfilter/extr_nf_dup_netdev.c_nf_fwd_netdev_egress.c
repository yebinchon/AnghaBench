
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_pktinfo {int skb; } ;
struct net_device {int dummy; } ;


 struct net_device* dev_get_by_index_rcu (int ,int) ;
 int kfree_skb (int ) ;
 int nf_do_netdev_egress (int ,struct net_device*) ;
 int nft_net (struct nft_pktinfo const*) ;

void nf_fwd_netdev_egress(const struct nft_pktinfo *pkt, int oif)
{
 struct net_device *dev;

 dev = dev_get_by_index_rcu(nft_net(pkt), oif);
 if (!dev) {
  kfree_skb(pkt->skb);
  return;
 }

 nf_do_netdev_egress(pkt->skb, dev);
}
