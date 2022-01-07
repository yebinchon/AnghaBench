
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_pnode {size_t iip; int flags; TYPE_1__* parent; } ;
struct ubifs_nbranch {int lnum; int offs; } ;
struct ubifs_info {int main_lebs; } ;
struct TYPE_2__ {struct ubifs_nbranch* nbranch; } ;


 int DIRTY_CNODE ;
 int DIV_ROUND_UP (int ,int ) ;
 scalar_t__ IS_ERR (struct ubifs_pnode*) ;
 int PTR_ERR (struct ubifs_pnode*) ;
 int UBIFS_LPT_FANOUT ;
 int cond_resched () ;
 scalar_t__ test_bit (int ,int *) ;
 struct ubifs_pnode* ubifs_pnode_lookup (struct ubifs_info*,int) ;

__attribute__((used)) static int dbg_is_pnode_dirty(struct ubifs_info *c, int lnum, int offs)
{
 int i, cnt;

 cnt = DIV_ROUND_UP(c->main_lebs, UBIFS_LPT_FANOUT);
 for (i = 0; i < cnt; i++) {
  struct ubifs_pnode *pnode;
  struct ubifs_nbranch *branch;

  cond_resched();
  pnode = ubifs_pnode_lookup(c, i);
  if (IS_ERR(pnode))
   return PTR_ERR(pnode);
  branch = &pnode->parent->nbranch[pnode->iip];
  if (branch->lnum != lnum || branch->offs != offs)
   continue;
  if (test_bit(DIRTY_CNODE, &pnode->flags))
   return 1;
  return 0;
 }
 return 1;
}
