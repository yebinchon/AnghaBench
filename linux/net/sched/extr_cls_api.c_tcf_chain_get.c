
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_chain {int dummy; } ;
struct tcf_block {int dummy; } ;


 struct tcf_chain* __tcf_chain_get (struct tcf_block*,int ,int,int) ;

__attribute__((used)) static struct tcf_chain *tcf_chain_get(struct tcf_block *block, u32 chain_index,
           bool create)
{
 return __tcf_chain_get(block, chain_index, create, 0);
}
