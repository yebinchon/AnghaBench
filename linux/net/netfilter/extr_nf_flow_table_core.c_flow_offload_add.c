
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nf_flowtable {int rhashtable; } ;
struct flow_offload {TYPE_1__* tuplehash; scalar_t__ timeout; } ;
struct TYPE_2__ {int node; } ;


 scalar_t__ NF_FLOW_TIMEOUT ;
 scalar_t__ jiffies ;
 int nf_flow_offload_rhash_params ;
 int rhashtable_insert_fast (int *,int *,int ) ;
 int rhashtable_remove_fast (int *,int *,int ) ;

int flow_offload_add(struct nf_flowtable *flow_table, struct flow_offload *flow)
{
 int err;

 flow->timeout = (u32)jiffies + NF_FLOW_TIMEOUT;

 err = rhashtable_insert_fast(&flow_table->rhashtable,
         &flow->tuplehash[0].node,
         nf_flow_offload_rhash_params);
 if (err < 0)
  return err;

 err = rhashtable_insert_fast(&flow_table->rhashtable,
         &flow->tuplehash[1].node,
         nf_flow_offload_rhash_params);
 if (err < 0) {
  rhashtable_remove_fast(&flow_table->rhashtable,
           &flow->tuplehash[0].node,
           nf_flow_offload_rhash_params);
  return err;
 }

 return 0;
}
