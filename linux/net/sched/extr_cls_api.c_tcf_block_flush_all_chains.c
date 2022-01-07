
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_chain {int dummy; } ;
struct tcf_block {int dummy; } ;


 int tcf_chain_flush (struct tcf_chain*,int) ;
 int tcf_chain_put_explicitly_created (struct tcf_chain*) ;
 struct tcf_chain* tcf_get_next_chain (struct tcf_block*,struct tcf_chain*) ;

__attribute__((used)) static void tcf_block_flush_all_chains(struct tcf_block *block, bool rtnl_held)
{
 struct tcf_chain *chain;




 for (chain = tcf_get_next_chain(block, ((void*)0));
      chain;
      chain = tcf_get_next_chain(block, chain)) {
  tcf_chain_put_explicitly_created(chain);
  tcf_chain_flush(chain, rtnl_held);
 }
}
