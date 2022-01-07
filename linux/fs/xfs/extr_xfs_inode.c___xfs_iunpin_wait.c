
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
 int __XFS_IPINNED_BIT ;
 int * bit_waitqueue (int *,int ) ;
 int finish_wait (int *,int *) ;
 int io_schedule () ;
 int prepare_to_wait (int *,int *,int ) ;
 TYPE_1__ wait ;
 scalar_t__ xfs_ipincount (struct xfs_inode*) ;
 int xfs_iunpin (struct xfs_inode*) ;

__attribute__((used)) static void
__xfs_iunpin_wait(
 struct xfs_inode *ip)
{
 wait_queue_head_t *wq = bit_waitqueue(&ip->i_flags, __XFS_IPINNED_BIT);
 DEFINE_WAIT_BIT(wait, &ip->i_flags, __XFS_IPINNED_BIT);

 xfs_iunpin(ip);

 do {
  prepare_to_wait(wq, &wait.wq_entry, TASK_UNINTERRUPTIBLE);
  if (xfs_ipincount(ip))
   io_schedule();
 } while (xfs_ipincount(ip));
 finish_wait(wq, &wait.wq_entry);
}
