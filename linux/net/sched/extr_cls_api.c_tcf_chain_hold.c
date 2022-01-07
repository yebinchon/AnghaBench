
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_chain {int refcnt; int block; } ;


 int ASSERT_BLOCK_LOCKED (int ) ;

__attribute__((used)) static void tcf_chain_hold(struct tcf_chain *chain)
{
 ASSERT_BLOCK_LOCKED(chain->block);

 ++chain->refcnt;
}
