
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_nnode {TYPE_1__* nbranch; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_cnode {int iip; scalar_t__ level; int flags; struct ubifs_nnode* parent; } ;
struct TYPE_2__ {struct ubifs_cnode* cnode; } ;


 int DIRTY_CNODE ;
 int UBIFS_LPT_FANOUT ;
 struct ubifs_cnode* first_dirty_cnode (struct ubifs_info const*,struct ubifs_nnode*) ;
 scalar_t__ test_bit (int ,int *) ;
 int ubifs_assert (struct ubifs_info const*,struct ubifs_cnode*) ;

__attribute__((used)) static struct ubifs_cnode *next_dirty_cnode(const struct ubifs_info *c, struct ubifs_cnode *cnode)
{
 struct ubifs_nnode *nnode;
 int i;

 ubifs_assert(c, cnode);
 nnode = cnode->parent;
 if (!nnode)
  return ((void*)0);
 for (i = cnode->iip + 1; i < UBIFS_LPT_FANOUT; i++) {
  cnode = nnode->nbranch[i].cnode;
  if (cnode && test_bit(DIRTY_CNODE, &cnode->flags)) {
   if (cnode->level == 0)
    return cnode;

   return first_dirty_cnode(c, (struct ubifs_nnode *)cnode);
  }
 }
 return (struct ubifs_cnode *)nnode;
}
