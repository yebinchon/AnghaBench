
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcf_chain {int refcnt; int index; struct tcf_block* block; int filter_chain_lock; int list; } ;
struct TYPE_2__ {struct tcf_chain* chain; } ;
struct tcf_block {TYPE_1__ chain0; int chain_list; } ;


 int ASSERT_BLOCK_LOCKED (struct tcf_block*) ;
 int GFP_KERNEL ;
 struct tcf_chain* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct tcf_chain *tcf_chain_create(struct tcf_block *block,
       u32 chain_index)
{
 struct tcf_chain *chain;

 ASSERT_BLOCK_LOCKED(block);

 chain = kzalloc(sizeof(*chain), GFP_KERNEL);
 if (!chain)
  return ((void*)0);
 list_add_tail(&chain->list, &block->chain_list);
 mutex_init(&chain->filter_chain_lock);
 chain->block = block;
 chain->index = chain_index;
 chain->refcnt = 1;
 if (!chain->index)
  block->chain0.chain = chain;
 return chain;
}
