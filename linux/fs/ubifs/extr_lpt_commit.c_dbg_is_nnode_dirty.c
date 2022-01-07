
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_nnode {size_t iip; int flags; TYPE_1__* parent; } ;
struct ubifs_nbranch {int lnum; int offs; } ;
struct ubifs_info {int lpt_lnum; int lpt_offs; } ;
struct TYPE_2__ {struct ubifs_nbranch* nbranch; } ;


 int DIRTY_CNODE ;
 int cond_resched () ;
 struct ubifs_nnode* first_nnode (struct ubifs_info*,int*) ;
 struct ubifs_nnode* next_nnode (struct ubifs_info*,struct ubifs_nnode*,int*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int dbg_is_nnode_dirty(struct ubifs_info *c, int lnum, int offs)
{
 struct ubifs_nnode *nnode;
 int hght;


 nnode = first_nnode(c, &hght);
 for (; nnode; nnode = next_nnode(c, nnode, &hght)) {
  struct ubifs_nbranch *branch;

  cond_resched();
  if (nnode->parent) {
   branch = &nnode->parent->nbranch[nnode->iip];
   if (branch->lnum != lnum || branch->offs != offs)
    continue;
   if (test_bit(DIRTY_CNODE, &nnode->flags))
    return 1;
   return 0;
  } else {
   if (c->lpt_lnum != lnum || c->lpt_offs != offs)
    continue;
   if (test_bit(DIRTY_CNODE, &nnode->flags))
    return 1;
   return 0;
  }
 }
 return 1;
}
