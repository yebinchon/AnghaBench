
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_chain {int dummy; } ;
struct tcf_block {int dummy; } ;


 struct tcf_chain* __tcf_chain_get (struct tcf_block*,int ,int,int) ;

struct tcf_chain *tcf_chain_get_by_act(struct tcf_block *block, u32 chain_index)
{
 return __tcf_chain_get(block, chain_index, 1, 1);
}
