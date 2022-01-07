
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {int child_cnt; int iip; scalar_t__ level; struct ubifs_znode* parent; } ;
struct ubifs_info {int dummy; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (struct ubifs_znode*) ;
 int PTR_ERR (struct ubifs_znode*) ;
 struct ubifs_znode* get_znode (struct ubifs_info*,struct ubifs_znode*,int) ;

__attribute__((used)) static int tnc_next(struct ubifs_info *c, struct ubifs_znode **zn, int *n)
{
 struct ubifs_znode *znode = *zn;
 int nn = *n;

 nn += 1;
 if (nn < znode->child_cnt) {
  *n = nn;
  return 0;
 }
 while (1) {
  struct ubifs_znode *zp;

  zp = znode->parent;
  if (!zp)
   return -ENOENT;
  nn = znode->iip + 1;
  znode = zp;
  if (nn < znode->child_cnt) {
   znode = get_znode(c, znode, nn);
   if (IS_ERR(znode))
    return PTR_ERR(znode);
   while (znode->level != 0) {
    znode = get_znode(c, znode, 0);
    if (IS_ERR(znode))
     return PTR_ERR(znode);
   }
   nn = 0;
   break;
  }
 }
 *zn = znode;
 *n = nn;
 return 0;
}
