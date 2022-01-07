
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_chain {int index; int list; struct tcf_block* block; } ;
struct TYPE_2__ {int * chain; } ;
struct tcf_block {int refcnt; int chain_list; TYPE_1__ chain0; } ;


 int ASSERT_BLOCK_LOCKED (struct tcf_block*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ refcount_read (int *) ;

__attribute__((used)) static bool tcf_chain_detach(struct tcf_chain *chain)
{
 struct tcf_block *block = chain->block;

 ASSERT_BLOCK_LOCKED(block);

 list_del(&chain->list);
 if (!chain->index)
  block->chain0.chain = ((void*)0);

 if (list_empty(&block->chain_list) &&
     refcount_read(&block->refcnt) == 0)
  return 1;

 return 0;
}
