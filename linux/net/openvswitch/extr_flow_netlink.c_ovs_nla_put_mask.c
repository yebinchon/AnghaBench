
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sw_flow {TYPE_1__* mask; int key; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int key; } ;


 int OVS_FLOW_ATTR_MASK ;
 int ovs_nla_put_key (int *,int *,int ,int,struct sk_buff*) ;

int ovs_nla_put_mask(const struct sw_flow *flow, struct sk_buff *skb)
{
 return ovs_nla_put_key(&flow->key, &flow->mask->key,
    OVS_FLOW_ATTR_MASK, 1, skb);
}
