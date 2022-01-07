
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_xattrs {int lock; int head; } ;
struct simple_xattr {int list; } ;


 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void simple_xattr_list_add(struct simple_xattrs *xattrs,
      struct simple_xattr *new_xattr)
{
 spin_lock(&xattrs->lock);
 list_add(&new_xattr->list, &xattrs->head);
 spin_unlock(&xattrs->lock);
}
