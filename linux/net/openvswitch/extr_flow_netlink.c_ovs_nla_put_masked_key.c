
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow {int key; } ;
struct sk_buff {int dummy; } ;


 int OVS_FLOW_ATTR_KEY ;
 int ovs_nla_put_key (int *,int *,int ,int,struct sk_buff*) ;

int ovs_nla_put_masked_key(const struct sw_flow *flow, struct sk_buff *skb)
{
 return ovs_nla_put_key(&flow->key, &flow->key,
    OVS_FLOW_ATTR_KEY, 0, skb);
}
