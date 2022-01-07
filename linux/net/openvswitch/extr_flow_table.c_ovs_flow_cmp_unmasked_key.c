
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int end; } ;
struct sw_flow_match {TYPE_1__ range; struct sw_flow_key* key; } ;
struct sw_flow_key {int dummy; } ;
struct TYPE_4__ {int unmasked_key; } ;
struct sw_flow {TYPE_2__ id; } ;


 int BUG_ON (int ) ;
 int cmp_key (int ,struct sw_flow_key*,int,int) ;
 int flow_key_start (struct sw_flow_key*) ;
 int ovs_identifier_is_ufid (TYPE_2__*) ;

__attribute__((used)) static bool ovs_flow_cmp_unmasked_key(const struct sw_flow *flow,
          const struct sw_flow_match *match)
{
 struct sw_flow_key *key = match->key;
 int key_start = flow_key_start(key);
 int key_end = match->range.end;

 BUG_ON(ovs_identifier_is_ufid(&flow->id));
 return cmp_key(flow->id.unmasked_key, key, key_start, key_end);
}
