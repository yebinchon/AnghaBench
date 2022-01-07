
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tpid; scalar_t__ tci; } ;
struct TYPE_4__ {TYPE_1__ vlan; } ;
struct sw_flow_key {TYPE_2__ eth; } ;
struct sk_buff {int dummy; } ;


 int invalidate_flow_key (struct sw_flow_key*) ;
 int skb_vlan_pop (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;

__attribute__((used)) static int pop_vlan(struct sk_buff *skb, struct sw_flow_key *key)
{
 int err;

 err = skb_vlan_pop(skb);
 if (skb_vlan_tag_present(skb)) {
  invalidate_flow_key(key);
 } else {
  key->eth.vlan.tci = 0;
  key->eth.vlan.tpid = 0;
 }
 return err;
}
