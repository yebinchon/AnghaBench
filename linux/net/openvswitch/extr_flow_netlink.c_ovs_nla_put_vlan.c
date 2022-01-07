
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_head {int tci; int tpid; } ;
struct sk_buff {int dummy; } ;
typedef int __be16 ;


 int EMSGSIZE ;
 int OVS_KEY_ATTR_ETHERTYPE ;
 int OVS_KEY_ATTR_VLAN ;
 int htons (int) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int ovs_nla_put_vlan(struct sk_buff *skb, const struct vlan_head *vh,
       bool is_mask)
{
 __be16 eth_type = !is_mask ? vh->tpid : htons(0xffff);

 if (nla_put_be16(skb, OVS_KEY_ATTR_ETHERTYPE, eth_type) ||
     nla_put_be16(skb, OVS_KEY_ATTR_VLAN, vh->tci))
  return -EMSGSIZE;
 return 0;
}
