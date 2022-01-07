
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; int protocol; struct net_device* dev; scalar_t__ data; } ;
struct seg6_local_lwt {int oif; } ;
struct net_device {scalar_t__ type; int flags; scalar_t__ mtu; } ;
struct net {int dummy; } ;
struct ethhdr {int h_proto; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EINVAL ;
 scalar_t__ ETH_HLEN ;
 int IFF_UP ;
 int NEXTHDR_NONE ;
 int decap_and_validate (struct sk_buff*,int ) ;
 struct net_device* dev_get_by_index_rcu (struct net*,int ) ;
 struct net* dev_net (struct net_device*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int eth_proto_is_802_3 (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int netif_carrier_ok (struct net_device*) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 int skb_forward_csum (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ skb_warn_if_lro (struct sk_buff*) ;

__attribute__((used)) static int input_action_end_dx2(struct sk_buff *skb,
    struct seg6_local_lwt *slwt)
{
 struct net *net = dev_net(skb->dev);
 struct net_device *odev;
 struct ethhdr *eth;

 if (!decap_and_validate(skb, NEXTHDR_NONE))
  goto drop;

 if (!pskb_may_pull(skb, ETH_HLEN))
  goto drop;

 skb_reset_mac_header(skb);
 eth = (struct ethhdr *)skb->data;





 if (!eth_proto_is_802_3(eth->h_proto))
  goto drop;

 odev = dev_get_by_index_rcu(net, slwt->oif);
 if (!odev)
  goto drop;




 if (odev->type != ARPHRD_ETHER)
  goto drop;

 if (!(odev->flags & IFF_UP) || !netif_carrier_ok(odev))
  goto drop;

 skb_orphan(skb);

 if (skb_warn_if_lro(skb))
  goto drop;

 skb_forward_csum(skb);

 if (skb->len - ETH_HLEN > odev->mtu)
  goto drop;

 skb->dev = odev;
 skb->protocol = eth->h_proto;

 return dev_queue_xmit(skb);

drop:
 kfree_skb(skb);
 return -EINVAL;
}
