
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_match {int range; int key; } ;
struct sw_flow {int id; } ;


 int flow_cmp_masked_key (struct sw_flow const*,int ,int *) ;
 int ovs_flow_cmp_unmasked_key (struct sw_flow const*,struct sw_flow_match const*) ;
 scalar_t__ ovs_identifier_is_ufid (int *) ;

bool ovs_flow_cmp(const struct sw_flow *flow, const struct sw_flow_match *match)
{
 if (ovs_identifier_is_ufid(&flow->id))
  return flow_cmp_masked_key(flow, match->key, &match->range);

 return ovs_flow_cmp_unmasked_key(flow, match);
}
