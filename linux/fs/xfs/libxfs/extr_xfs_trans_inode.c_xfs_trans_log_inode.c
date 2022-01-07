
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int t_flags; } ;
typedef TYPE_3__ xfs_trans_t ;
struct TYPE_12__ {TYPE_2__* i_itemp; } ;
typedef TYPE_4__ xfs_inode_t ;
typedef int uint ;
struct inode {int i_state; int i_lock; } ;
struct TYPE_9__ {int li_flags; } ;
struct TYPE_10__ {int ili_fsync_fields; int ili_last_fields; int ili_fields; TYPE_1__ ili_item; } ;


 int ASSERT (int ) ;
 scalar_t__ IS_I_VERSION (struct inode*) ;
 int I_DIRTY_TIME ;
 int I_DIRTY_TIME_EXPIRED ;
 struct inode* VFS_I (TYPE_4__*) ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOG_CORE ;
 int XFS_LI_DIRTY ;
 int XFS_TRANS_DIRTY ;
 scalar_t__ inode_maybe_inc_iversion (struct inode*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int *) ;
 int xfs_isilocked (TYPE_4__*,int ) ;

void
xfs_trans_log_inode(
 xfs_trans_t *tp,
 xfs_inode_t *ip,
 uint flags)
{
 struct inode *inode = VFS_I(ip);

 ASSERT(ip->i_itemp != ((void*)0));
 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));







 if (inode->i_state & (I_DIRTY_TIME | I_DIRTY_TIME_EXPIRED)) {
  spin_lock(&inode->i_lock);
  inode->i_state &= ~(I_DIRTY_TIME | I_DIRTY_TIME_EXPIRED);
  spin_unlock(&inode->i_lock);
 }
 ip->i_itemp->ili_fsync_fields |= flags;
 if (!test_and_set_bit(XFS_LI_DIRTY, &ip->i_itemp->ili_item.li_flags) &&
     IS_I_VERSION(VFS_I(ip))) {
  if (inode_maybe_inc_iversion(VFS_I(ip), flags & XFS_ILOG_CORE))
   flags |= XFS_ILOG_CORE;
 }

 tp->t_flags |= XFS_TRANS_DIRTY;
 flags |= ip->i_itemp->ili_last_fields;
 ip->i_itemp->ili_fields |= flags;
}
