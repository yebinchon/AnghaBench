
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tblock {int sb; int cqueue; } ;
struct TYPE_4__ {int commit_state; } ;
struct TYPE_3__ {int unlock_queue; } ;


 int IN_LAZYCOMMIT ;
 TYPE_2__* JFS_SBI (int ) ;
 int LAZY_LOCK (unsigned long) ;
 int LAZY_UNLOCK (unsigned long) ;
 TYPE_1__ TxAnchor ;
 int jfs_commit_thread_wait ;
 int jfs_commit_thread_waking ;
 int list_add_tail (int *,int *) ;
 int wake_up (int *) ;

void txLazyUnlock(struct tblock * tblk)
{
 unsigned long flags;

 LAZY_LOCK(flags);

 list_add_tail(&tblk->cqueue, &TxAnchor.unlock_queue);




 if (!(JFS_SBI(tblk->sb)->commit_state & IN_LAZYCOMMIT) &&
     !jfs_commit_thread_waking) {
  jfs_commit_thread_waking = 1;
  wake_up(&jfs_commit_thread_wait);
 }
 LAZY_UNLOCK(flags);
}
