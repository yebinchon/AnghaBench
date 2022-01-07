
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key_range {int end; int start; } ;
struct sw_flow_key {int dummy; } ;
struct sw_flow {int key; } ;


 int cmp_key (int *,struct sw_flow_key const*,int ,int ) ;

__attribute__((used)) static bool flow_cmp_masked_key(const struct sw_flow *flow,
    const struct sw_flow_key *key,
    const struct sw_flow_key_range *range)
{
 return cmp_key(&flow->key, key, range->start, range->end);
}
