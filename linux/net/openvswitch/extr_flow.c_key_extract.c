
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tci; int tpid; } ;
struct TYPE_6__ {int type; TYPE_2__ cvlan; int dst; int src; } ;
struct TYPE_4__ {scalar_t__ flags; } ;
struct sw_flow_key {TYPE_3__ eth; TYPE_1__ tp; } ;
struct sk_buff {int protocol; scalar_t__ data; } ;
struct ethhdr {int h_dest; int h_source; } ;


 int EINVAL ;
 int ENOMEM ;
 int ETH_ALEN ;
 scalar_t__ MAC_PROTO_NONE ;
 int VLAN_CFI_MASK ;
 int __skb_pull (struct sk_buff*,int) ;
 int __skb_push (struct sk_buff*,scalar_t__) ;
 int clear_vlan (struct sw_flow_key*) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int eth_type_vlan (int) ;
 int ether_addr_copy (int ,int ) ;
 int htons (int ) ;
 int key_extract_l3l4 (struct sk_buff*,struct sw_flow_key*) ;
 scalar_t__ ovs_key_mac_proto (struct sw_flow_key*) ;
 int parse_ethertype (struct sk_buff*) ;
 int parse_vlan (struct sk_buff*,struct sw_flow_key*) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_mac_len (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int key_extract(struct sk_buff *skb, struct sw_flow_key *key)
{
 struct ethhdr *eth;


 key->tp.flags = 0;

 skb_reset_mac_header(skb);


 clear_vlan(key);
 if (ovs_key_mac_proto(key) == MAC_PROTO_NONE) {
  if (unlikely(eth_type_vlan(skb->protocol)))
   return -EINVAL;

  skb_reset_network_header(skb);
  key->eth.type = skb->protocol;
 } else {
  eth = eth_hdr(skb);
  ether_addr_copy(key->eth.src, eth->h_source);
  ether_addr_copy(key->eth.dst, eth->h_dest);

  __skb_pull(skb, 2 * ETH_ALEN);




  if (unlikely(parse_vlan(skb, key)))
   return -ENOMEM;

  key->eth.type = parse_ethertype(skb);
  if (unlikely(key->eth.type == htons(0)))
   return -ENOMEM;





  if (key->eth.cvlan.tci & htons(VLAN_CFI_MASK))
   skb->protocol = key->eth.cvlan.tpid;
  else
   skb->protocol = key->eth.type;

  skb_reset_network_header(skb);
  __skb_push(skb, skb->data - skb_mac_header(skb));
 }

 skb_reset_mac_len(skb);


 return key_extract_l3l4(skb, key);
}
