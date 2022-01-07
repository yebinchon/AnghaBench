
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tci; int tpid; } ;
struct TYPE_3__ {TYPE_2__ cvlan; TYPE_2__ vlan; } ;
struct sw_flow_key {TYPE_1__ eth; } ;
struct sk_buff {int vlan_proto; int vlan_tci; } ;


 int VLAN_CFI_MASK ;
 int htons (int ) ;
 int parse_vlan_tag (struct sk_buff*,TYPE_2__*,int) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;

__attribute__((used)) static int parse_vlan(struct sk_buff *skb, struct sw_flow_key *key)
{
 int res;

 if (skb_vlan_tag_present(skb)) {
  key->eth.vlan.tci = htons(skb->vlan_tci) | htons(VLAN_CFI_MASK);
  key->eth.vlan.tpid = skb->vlan_proto;
 } else {

  res = parse_vlan_tag(skb, &key->eth.vlan, 1);
  if (res <= 0)
   return res;
 }


 res = parse_vlan_tag(skb, &key->eth.cvlan, 0);
 if (res <= 0)
  return res;

 return 0;
}
