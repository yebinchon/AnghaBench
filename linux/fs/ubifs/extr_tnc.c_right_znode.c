
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {int level; int iip; int child_cnt; struct ubifs_znode* parent; } ;
struct ubifs_info {int dummy; } ;


 scalar_t__ IS_ERR (struct ubifs_znode*) ;
 struct ubifs_znode* get_znode (struct ubifs_info*,struct ubifs_znode*,int) ;

__attribute__((used)) static struct ubifs_znode *right_znode(struct ubifs_info *c,
           struct ubifs_znode *znode)
{
 int level = znode->level;

 while (1) {
  int n = znode->iip + 1;


  znode = znode->parent;
  if (!znode)
   return ((void*)0);
  if (n < znode->child_cnt) {

   znode = get_znode(c, znode, n);
   if (IS_ERR(znode))
    return znode;
   while (znode->level != level) {
    znode = get_znode(c, znode, 0);
    if (IS_ERR(znode))
     return znode;
   }
   break;
  }
 }
 return znode;
}
