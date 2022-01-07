
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {TYPE_1__* dev; void* protocol; } ;
struct ethhdr {void* h_proto; int h_dest; int h_source; } ;
struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {scalar_t__ if_status; TYPE_1__* net_dev; int soft_iface; } ;
struct TYPE_2__ {int flags; int const* dev_addr; int name; } ;


 scalar_t__ BATADV_IF_ACTIVE ;
 int ETH_HLEN ;
 int ETH_P_BATMAN ;
 int IFF_UP ;
 int NET_XMIT_DROP ;
 int batadv_nc_skb_store_for_decoding (struct batadv_priv*,struct sk_buff*) ;
 scalar_t__ batadv_skb_head_push (struct sk_buff*,int ) ;
 int dev_queue_xmit (struct sk_buff*) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int ether_addr_copy (int ,int const*) ;
 void* htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int net_xmit_eval (int) ;
 struct batadv_priv* netdev_priv (int ) ;
 int pr_warn (char*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

int batadv_send_skb_packet(struct sk_buff *skb,
      struct batadv_hard_iface *hard_iface,
      const u8 *dst_addr)
{
 struct batadv_priv *bat_priv;
 struct ethhdr *ethhdr;
 int ret;

 bat_priv = netdev_priv(hard_iface->soft_iface);

 if (hard_iface->if_status != BATADV_IF_ACTIVE)
  goto send_skb_err;

 if (unlikely(!hard_iface->net_dev))
  goto send_skb_err;

 if (!(hard_iface->net_dev->flags & IFF_UP)) {
  pr_warn("Interface %s is not up - can't send packet via that interface!\n",
   hard_iface->net_dev->name);
  goto send_skb_err;
 }


 if (batadv_skb_head_push(skb, ETH_HLEN) < 0)
  goto send_skb_err;

 skb_reset_mac_header(skb);

 ethhdr = eth_hdr(skb);
 ether_addr_copy(ethhdr->h_source, hard_iface->net_dev->dev_addr);
 ether_addr_copy(ethhdr->h_dest, dst_addr);
 ethhdr->h_proto = htons(ETH_P_BATMAN);

 skb_set_network_header(skb, ETH_HLEN);
 skb->protocol = htons(ETH_P_BATMAN);

 skb->dev = hard_iface->net_dev;


 batadv_nc_skb_store_for_decoding(bat_priv, skb);





 ret = dev_queue_xmit(skb);
 return net_xmit_eval(ret);
send_skb_err:
 kfree_skb(skb);
 return NET_XMIT_DROP;
}
