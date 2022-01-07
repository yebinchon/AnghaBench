
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {scalar_t__ level; int child_cnt; struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {struct ubifs_znode* znode; } ;


 scalar_t__ ubifs_zn_dirty (struct ubifs_znode*) ;

__attribute__((used)) static struct ubifs_znode *find_first_dirty(struct ubifs_znode *znode)
{
 int i, cont;

 if (!znode)
  return ((void*)0);

 while (1) {
  if (znode->level == 0) {
   if (ubifs_zn_dirty(znode))
    return znode;
   return ((void*)0);
  }
  cont = 0;
  for (i = 0; i < znode->child_cnt; i++) {
   struct ubifs_zbranch *zbr = &znode->zbranch[i];

   if (zbr->znode && ubifs_zn_dirty(zbr->znode)) {
    znode = zbr->znode;
    cont = 1;
    break;
   }
  }
  if (!cont) {
   if (ubifs_zn_dirty(znode))
    return znode;
   return ((void*)0);
  }
 }
}
