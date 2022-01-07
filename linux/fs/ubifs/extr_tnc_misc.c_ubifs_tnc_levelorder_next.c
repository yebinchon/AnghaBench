
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {int level; int iip; int child_cnt; struct ubifs_znode* parent; } ;
struct ubifs_info {int dummy; } ;


 int ubifs_assert (struct ubifs_info const*,...) ;
 struct ubifs_znode* ubifs_tnc_find_child (struct ubifs_znode*,int) ;
 scalar_t__ unlikely (int) ;

struct ubifs_znode *ubifs_tnc_levelorder_next(const struct ubifs_info *c,
           struct ubifs_znode *zr,
           struct ubifs_znode *znode)
{
 int level, iip, level_search = 0;
 struct ubifs_znode *zn;

 ubifs_assert(c, zr);

 if (unlikely(!znode))
  return zr;

 if (unlikely(znode == zr)) {
  if (znode->level == 0)
   return ((void*)0);
  return ubifs_tnc_find_child(zr, 0);
 }

 level = znode->level;

 iip = znode->iip;
 while (1) {
  ubifs_assert(c, znode->level <= zr->level);





  while (znode->parent != zr && iip >= znode->parent->child_cnt) {
   znode = znode->parent;
   iip = znode->iip;
  }

  if (unlikely(znode->parent == zr &&
        iip >= znode->parent->child_cnt)) {

   level -= 1;
   if (level_search || level < 0)






    return ((void*)0);

   level_search = 1;
   iip = -1;
   znode = ubifs_tnc_find_child(zr, 0);
   ubifs_assert(c, znode);
  }


  zn = ubifs_tnc_find_child(znode->parent, iip + 1);
  if (!zn) {

   iip = znode->parent->child_cnt;
   continue;
  }


  while (zn->level != level) {
   znode = zn;
   zn = ubifs_tnc_find_child(zn, 0);
   if (!zn) {




    iip = znode->iip;
    break;
   }
  }

  if (zn) {
   ubifs_assert(c, zn->level >= 0);
   return zn;
  }
 }
}
