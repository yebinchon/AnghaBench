
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct xfs_inode {int i_flags; } ;
struct TYPE_3__ {int wq_entry; } ;


 int DEFINE_WAIT_BIT (TYPE_1__,int *,int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int __XFS_IFLOCK_BIT ;
 int * bit_waitqueue (int *,int ) ;
 int finish_wait (int *,int *) ;
 int io_schedule () ;
 int prepare_to_wait_exclusive (int *,int *,int ) ;
 TYPE_1__ wait ;
 int xfs_iflock_nowait (struct xfs_inode*) ;
 scalar_t__ xfs_isiflocked (struct xfs_inode*) ;

void
__xfs_iflock(
 struct xfs_inode *ip)
{
 wait_queue_head_t *wq = bit_waitqueue(&ip->i_flags, __XFS_IFLOCK_BIT);
 DEFINE_WAIT_BIT(wait, &ip->i_flags, __XFS_IFLOCK_BIT);

 do {
  prepare_to_wait_exclusive(wq, &wait.wq_entry, TASK_UNINTERRUPTIBLE);
  if (xfs_isiflocked(ip))
   io_schedule();
 } while (!xfs_iflock_nowait(ip));

 finish_wait(wq, &wait.wq_entry);
}
