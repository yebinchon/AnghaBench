
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_chain {int filter_chain_lock; struct tcf_block* block; } ;
struct tcf_block {int dummy; } ;


 int kfree_rcu (struct tcf_chain*,int ) ;
 int mutex_destroy (int *) ;
 int rcu ;
 int tcf_block_destroy (struct tcf_block*) ;

__attribute__((used)) static void tcf_chain_destroy(struct tcf_chain *chain, bool free_block)
{
 struct tcf_block *block = chain->block;

 mutex_destroy(&chain->filter_chain_lock);
 kfree_rcu(chain, rcu);
 if (free_block)
  tcf_block_destroy(block);
}
