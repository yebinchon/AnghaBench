
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_chain {scalar_t__ refcnt; scalar_t__ action_refcnt; int block; } ;


 int ASSERT_BLOCK_LOCKED (int ) ;

__attribute__((used)) static bool tcf_chain_held_by_acts_only(struct tcf_chain *chain)
{
 ASSERT_BLOCK_LOCKED(chain->block);




 return chain->refcnt == chain->action_refcnt;
}
