
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int mac_proto; } ;
struct sk_buff {int dummy; } ;


 int SW_FLOW_KEY_INVALID ;
 int key_extract (struct sk_buff*,struct sw_flow_key*) ;

int ovs_flow_key_update(struct sk_buff *skb, struct sw_flow_key *key)
{
 int res;

 res = key_extract(skb, key);
 if (!res)
  key->mac_proto &= ~SW_FLOW_KEY_INVALID;

 return res;
}
