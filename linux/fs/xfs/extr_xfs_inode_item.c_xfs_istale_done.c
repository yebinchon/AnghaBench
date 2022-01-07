
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_log_item {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_2__ {int ili_inode; } ;


 TYPE_1__* INODE_ITEM (struct xfs_log_item*) ;
 int xfs_iflush_abort (int ,int) ;

void
xfs_istale_done(
 struct xfs_buf *bp,
 struct xfs_log_item *lip)
{
 xfs_iflush_abort(INODE_ITEM(lip)->ili_inode, 1);
}
