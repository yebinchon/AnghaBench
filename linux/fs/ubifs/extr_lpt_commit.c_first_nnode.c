
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_nnode {TYPE_1__* nbranch; } ;
struct ubifs_info {int lpt_hght; struct ubifs_nnode* nroot; } ;
struct TYPE_2__ {struct ubifs_nnode* nnode; } ;


 int UBIFS_LPT_FANOUT ;

__attribute__((used)) static struct ubifs_nnode *first_nnode(struct ubifs_info *c, int *hght)
{
 struct ubifs_nnode *nnode;
 int h, i, found;

 nnode = c->nroot;
 *hght = 0;
 if (!nnode)
  return ((void*)0);
 for (h = 1; h < c->lpt_hght; h++) {
  found = 0;
  for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
   if (nnode->nbranch[i].nnode) {
    found = 1;
    nnode = nnode->nbranch[i].nnode;
    *hght = h;
    break;
   }
  }
  if (!found)
   break;
 }
 return nnode;
}
