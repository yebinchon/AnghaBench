
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
 int XFS_INEW ;
 int __XFS_INEW_BIT ;
 int * bit_waitqueue (int *,int ) ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 TYPE_1__ wait ;
 int xfs_iflags_test (struct xfs_inode*,int ) ;

__attribute__((used)) static void
xfs_inew_wait(
 struct xfs_inode *ip)
{
 wait_queue_head_t *wq = bit_waitqueue(&ip->i_flags, __XFS_INEW_BIT);
 DEFINE_WAIT_BIT(wait, &ip->i_flags, __XFS_INEW_BIT);

 do {
  prepare_to_wait(wq, &wait.wq_entry, TASK_UNINTERRUPTIBLE);
  if (!xfs_iflags_test(ip, XFS_INEW))
   break;
  schedule();
 } while (1);
 finish_wait(wq, &wait.wq_entry);
}
