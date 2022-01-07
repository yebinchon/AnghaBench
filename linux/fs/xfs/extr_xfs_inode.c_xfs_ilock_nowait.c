
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
 int XFS_ILOCK_SHARED ;
 int XFS_IOLOCK_EXCL ;
 int XFS_IOLOCK_SHARED ;
 int XFS_LOCK_MASK ;
 int XFS_LOCK_SUBCLASS_MASK ;
 int XFS_MMAPLOCK_EXCL ;
 int XFS_MMAPLOCK_SHARED ;
 int _RET_IP_ ;
 int down_read_trylock (int *) ;
 int down_write_trylock (int *) ;
 int mrtryaccess (int *) ;
 int mrtryupdate (int *) ;
 int mrunlock_excl (int *) ;
 int mrunlock_shared (int *) ;
 int trace_xfs_ilock_nowait (TYPE_1__*,int,int ) ;
 int up_read (int *) ;
 int up_write (int *) ;

int
xfs_ilock_nowait(
 xfs_inode_t *ip,
 uint lock_flags)
{
 trace_xfs_ilock_nowait(ip, lock_flags, _RET_IP_);






 ASSERT((lock_flags & (XFS_IOLOCK_SHARED | XFS_IOLOCK_EXCL)) !=
        (XFS_IOLOCK_SHARED | XFS_IOLOCK_EXCL));
 ASSERT((lock_flags & (XFS_MMAPLOCK_SHARED | XFS_MMAPLOCK_EXCL)) !=
        (XFS_MMAPLOCK_SHARED | XFS_MMAPLOCK_EXCL));
 ASSERT((lock_flags & (XFS_ILOCK_SHARED | XFS_ILOCK_EXCL)) !=
        (XFS_ILOCK_SHARED | XFS_ILOCK_EXCL));
 ASSERT((lock_flags & ~(XFS_LOCK_MASK | XFS_LOCK_SUBCLASS_MASK)) == 0);

 if (lock_flags & XFS_IOLOCK_EXCL) {
  if (!down_write_trylock(&VFS_I(ip)->i_rwsem))
   goto out;
 } else if (lock_flags & XFS_IOLOCK_SHARED) {
  if (!down_read_trylock(&VFS_I(ip)->i_rwsem))
   goto out;
 }

 if (lock_flags & XFS_MMAPLOCK_EXCL) {
  if (!mrtryupdate(&ip->i_mmaplock))
   goto out_undo_iolock;
 } else if (lock_flags & XFS_MMAPLOCK_SHARED) {
  if (!mrtryaccess(&ip->i_mmaplock))
   goto out_undo_iolock;
 }

 if (lock_flags & XFS_ILOCK_EXCL) {
  if (!mrtryupdate(&ip->i_lock))
   goto out_undo_mmaplock;
 } else if (lock_flags & XFS_ILOCK_SHARED) {
  if (!mrtryaccess(&ip->i_lock))
   goto out_undo_mmaplock;
 }
 return 1;

out_undo_mmaplock:
 if (lock_flags & XFS_MMAPLOCK_EXCL)
  mrunlock_excl(&ip->i_mmaplock);
 else if (lock_flags & XFS_MMAPLOCK_SHARED)
  mrunlock_shared(&ip->i_mmaplock);
out_undo_iolock:
 if (lock_flags & XFS_IOLOCK_EXCL)
  up_write(&VFS_I(ip)->i_rwsem);
 else if (lock_flags & XFS_IOLOCK_SHARED)
  up_read(&VFS_I(ip)->i_rwsem);
out:
 return 0;
}
