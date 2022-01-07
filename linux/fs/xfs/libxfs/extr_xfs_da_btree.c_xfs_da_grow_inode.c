
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_fileoff_t ;
typedef scalar_t__ xfs_dablk_t ;
struct xfs_da_args {TYPE_1__* geo; } ;
struct TYPE_2__ {int fsbcount; scalar_t__ leafblk; } ;


 int trace_xfs_da_grow_inode (struct xfs_da_args*) ;
 int xfs_da_grow_inode_int (struct xfs_da_args*,scalar_t__*,int ) ;

int
xfs_da_grow_inode(
 struct xfs_da_args *args,
 xfs_dablk_t *new_blkno)
{
 xfs_fileoff_t bno;
 int error;

 trace_xfs_da_grow_inode(args);

 bno = args->geo->leafblk;
 error = xfs_da_grow_inode_int(args, &bno, args->geo->fsbcount);
 if (!error)
  *new_blkno = (xfs_dablk_t)bno;
 return error;
}
