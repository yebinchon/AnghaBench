
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;


 int ovs_ct_update_key (struct sk_buff const*,int *,struct sw_flow_key*,int,int) ;

void ovs_ct_fill_key(const struct sk_buff *skb, struct sw_flow_key *key)
{
 ovs_ct_update_key(skb, ((void*)0), key, 0, 0);
}
