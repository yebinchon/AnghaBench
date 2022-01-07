
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct net_device {int name; } ;
struct mpoa_client {int number_of_mps_macs; int old_ops; scalar_t__ mps_macs; } ;
struct iphdr {int dummy; } ;
struct ethhdr {scalar_t__ h_proto; int h_dest; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int ihl; } ;


 int ETH_ALEN ;
 scalar_t__ ETH_HLEN ;
 int ETH_P_IP ;
 int NETDEV_TX_OK ;
 int __netdev_start_xmit (int ,struct sk_buff*,struct net_device*,int) ;
 scalar_t__ ether_addr_equal (int ,scalar_t__) ;
 struct mpoa_client* find_mpc_by_lec (struct net_device*) ;
 scalar_t__ htons (int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int pr_info (char*,int ) ;
 scalar_t__ send_via_shortcut (struct sk_buff*,struct mpoa_client*) ;
 int skb_set_network_header (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static netdev_tx_t mpc_send_packet(struct sk_buff *skb,
      struct net_device *dev)
{
 struct mpoa_client *mpc;
 struct ethhdr *eth;
 int i = 0;

 mpc = find_mpc_by_lec(dev);
 if (mpc == ((void*)0)) {
  pr_info("(%s) no MPC found\n", dev->name);
  goto non_ip;
 }

 eth = (struct ethhdr *)skb->data;
 if (eth->h_proto != htons(ETH_P_IP))
  goto non_ip;


 if (skb->len < ETH_HLEN + sizeof(struct iphdr))
  goto non_ip;
 skb_set_network_header(skb, ETH_HLEN);
 if (skb->len < ETH_HLEN + ip_hdr(skb)->ihl * 4 || ip_hdr(skb)->ihl < 5)
  goto non_ip;

 while (i < mpc->number_of_mps_macs) {
  if (ether_addr_equal(eth->h_dest, mpc->mps_macs + i * ETH_ALEN))
   if (send_via_shortcut(skb, mpc) == 0)
    return NETDEV_TX_OK;
  i++;
 }

non_ip:
 return __netdev_start_xmit(mpc->old_ops, skb, dev, 0);
}
