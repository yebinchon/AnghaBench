
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_da_args {int namelen; TYPE_1__* geo; int valuelen; } ;
struct TYPE_2__ {int blksize; } ;


 int xfs_attr_leaf_entsize_local (int ,int ) ;
 int xfs_attr_leaf_entsize_local_max (int ) ;
 int xfs_attr_leaf_entsize_remote (int ) ;

int
xfs_attr_leaf_newentsize(
 struct xfs_da_args *args,
 int *local)
{
 int size;

 size = xfs_attr_leaf_entsize_local(args->namelen, args->valuelen);
 if (size < xfs_attr_leaf_entsize_local_max(args->geo->blksize)) {
  if (local)
   *local = 1;
  return size;
 }
 if (local)
  *local = 0;
 return xfs_attr_leaf_entsize_remote(args->namelen);
}
