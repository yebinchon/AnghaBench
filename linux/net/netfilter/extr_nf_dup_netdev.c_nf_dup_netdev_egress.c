
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_pktinfo {int skb; } ;
struct net_device {int dummy; } ;


 int GFP_ATOMIC ;
 struct net_device* dev_get_by_index_rcu (int ,int) ;
 int nf_do_netdev_egress (struct sk_buff*,struct net_device*) ;
 int nft_net (struct nft_pktinfo const*) ;
 struct sk_buff* skb_clone (int ,int ) ;

void nf_dup_netdev_egress(const struct nft_pktinfo *pkt, int oif)
{
 struct net_device *dev;
 struct sk_buff *skb;

 dev = dev_get_by_index_rcu(nft_net(pkt), oif);
 if (dev == ((void*)0))
  return;

 skb = skb_clone(pkt->skb, GFP_ATOMIC);
 if (skb)
  nf_do_netdev_egress(skb, dev);
}
