
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i_mmaplock; int i_lock; } ;
typedef TYPE_1__ xfs_inode_t ;
typedef int uint ;
struct TYPE_7__ {int i_rwsem; } ;


 int ASSERT (int) ;
 TYPE_4__* VFS_I (TYPE_1__*) ;
 int XFS_ILOCK_EXCL ;
 int XFS_IOLOCK_EXCL ;
 int XFS_MMAPLOCK_EXCL ;
 int _RET_IP_ ;
 int downgrade_write (int *) ;
 int mrdemote (int *) ;
 int trace_xfs_ilock_demote (TYPE_1__*,int,int ) ;

void
xfs_ilock_demote(
 xfs_inode_t *ip,
 uint lock_flags)
{
 ASSERT(lock_flags & (XFS_IOLOCK_EXCL|XFS_MMAPLOCK_EXCL|XFS_ILOCK_EXCL));
 ASSERT((lock_flags &
  ~(XFS_IOLOCK_EXCL|XFS_MMAPLOCK_EXCL|XFS_ILOCK_EXCL)) == 0);

 if (lock_flags & XFS_ILOCK_EXCL)
  mrdemote(&ip->i_lock);
 if (lock_flags & XFS_MMAPLOCK_EXCL)
  mrdemote(&ip->i_mmaplock);
 if (lock_flags & XFS_IOLOCK_EXCL)
  downgrade_write(&VFS_I(ip)->i_rwsem);

 trace_xfs_ilock_demote(ip, lock_flags, _RET_IP_);
}
