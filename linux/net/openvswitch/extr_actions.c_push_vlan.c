
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tpid; int tci; } ;
struct TYPE_4__ {TYPE_1__ vlan; } ;
struct sw_flow_key {TYPE_2__ eth; } ;
struct sk_buff {int dummy; } ;
struct ovs_action_push_vlan {int vlan_tci; int vlan_tpid; } ;


 int VLAN_CFI_MASK ;
 int invalidate_flow_key (struct sw_flow_key*) ;
 int ntohs (int ) ;
 int skb_vlan_push (struct sk_buff*,int ,int) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;

__attribute__((used)) static int push_vlan(struct sk_buff *skb, struct sw_flow_key *key,
       const struct ovs_action_push_vlan *vlan)
{
 if (skb_vlan_tag_present(skb)) {
  invalidate_flow_key(key);
 } else {
  key->eth.vlan.tci = vlan->vlan_tci;
  key->eth.vlan.tpid = vlan->vlan_tpid;
 }
 return skb_vlan_push(skb, vlan->vlan_tpid,
        ntohs(vlan->vlan_tci) & ~VLAN_CFI_MASK);
}
