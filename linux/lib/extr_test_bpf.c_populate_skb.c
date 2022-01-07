
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; void* vlan_proto; int vlan_present; int vlan_tci; int queue_mapping; int hash; int mark; int pkt_type; void* protocol; } ;
struct TYPE_3__ {int type; int ifindex; } ;


 int ETH_HLEN ;
 int ETH_P_IP ;
 int GFP_KERNEL ;
 int MAX_DATA ;
 int SKB_DEV_IFINDEX ;
 int SKB_DEV_TYPE ;
 int SKB_HASH ;
 int SKB_MARK ;
 int SKB_QUEUE_MAP ;
 int SKB_TYPE ;
 int SKB_VLAN_PRESENT ;
 int SKB_VLAN_TCI ;
 int __skb_put_data (struct sk_buff*,char*,int) ;
 struct sk_buff* alloc_skb (int,int ) ;
 TYPE_1__ dev ;
 int dev_net_set (TYPE_1__*,int *) ;
 void* htons (int ) ;
 int init_net ;
 int min (int,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,int ) ;

__attribute__((used)) static struct sk_buff *populate_skb(char *buf, int size)
{
 struct sk_buff *skb;

 if (size >= MAX_DATA)
  return ((void*)0);

 skb = alloc_skb(MAX_DATA, GFP_KERNEL);
 if (!skb)
  return ((void*)0);

 __skb_put_data(skb, buf, size);


 skb_reset_mac_header(skb);
 skb->protocol = htons(ETH_P_IP);
 skb->pkt_type = SKB_TYPE;
 skb->mark = SKB_MARK;
 skb->hash = SKB_HASH;
 skb->queue_mapping = SKB_QUEUE_MAP;
 skb->vlan_tci = SKB_VLAN_TCI;
 skb->vlan_present = SKB_VLAN_PRESENT;
 skb->vlan_proto = htons(ETH_P_IP);
 dev_net_set(&dev, &init_net);
 skb->dev = &dev;
 skb->dev->ifindex = SKB_DEV_IFINDEX;
 skb->dev->type = SKB_DEV_TYPE;
 skb_set_network_header(skb, min(size, ETH_HLEN));

 return skb;
}
