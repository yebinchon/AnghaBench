
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {struct ubifs_znode* parent; scalar_t__ iip; } ;
struct ubifs_info {int dummy; } ;


 int ubifs_assert (struct ubifs_info const*,struct ubifs_znode*) ;
 struct ubifs_znode* ubifs_tnc_find_child (struct ubifs_znode*,scalar_t__) ;
 struct ubifs_znode* ubifs_tnc_postorder_first (struct ubifs_znode*) ;
 scalar_t__ unlikely (int) ;

struct ubifs_znode *ubifs_tnc_postorder_next(const struct ubifs_info *c,
          struct ubifs_znode *znode)
{
 struct ubifs_znode *zn;

 ubifs_assert(c, znode);
 if (unlikely(!znode->parent))
  return ((void*)0);


 zn = ubifs_tnc_find_child(znode->parent, znode->iip + 1);
 if (!zn)

  return znode->parent;


 return ubifs_tnc_postorder_first(zn);
}
