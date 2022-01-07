
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct inode {int i_lock; int i_state; } ;
struct TYPE_3__ {int wq_entry; } ;


 int DEFINE_WAIT_BIT (TYPE_1__,int *,int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int __I_NEW ;
 int * bit_waitqueue (int *,int ) ;
 int finish_wait (int *,int *) ;
 int inode_hash_lock ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__ wait ;

__attribute__((used)) static void __wait_on_freeing_inode(struct inode *inode)
{
 wait_queue_head_t *wq;
 DEFINE_WAIT_BIT(wait, &inode->i_state, __I_NEW);
 wq = bit_waitqueue(&inode->i_state, __I_NEW);
 prepare_to_wait(wq, &wait.wq_entry, TASK_UNINTERRUPTIBLE);
 spin_unlock(&inode->i_lock);
 spin_unlock(&inode_hash_lock);
 schedule();
 finish_wait(wq, &wait.wq_entry);
 spin_lock(&inode_hash_lock);
}
