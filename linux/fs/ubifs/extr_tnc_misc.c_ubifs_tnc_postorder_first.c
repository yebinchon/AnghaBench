
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {scalar_t__ level; } ;


 struct ubifs_znode* ubifs_tnc_find_child (struct ubifs_znode*,int ) ;
 scalar_t__ unlikely (int) ;

struct ubifs_znode *ubifs_tnc_postorder_first(struct ubifs_znode *znode)
{
 if (unlikely(!znode))
  return ((void*)0);

 while (znode->level > 0) {
  struct ubifs_znode *child;

  child = ubifs_tnc_find_child(znode, 0);
  if (!child)
   return znode;
  znode = child;
 }

 return znode;
}
