
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;


 int key_extract_l3l4 (struct sk_buff*,struct sw_flow_key*) ;

int ovs_flow_key_update_l3l4(struct sk_buff *skb, struct sw_flow_key *key)
{
 return key_extract_l3l4(skb, key);
}
