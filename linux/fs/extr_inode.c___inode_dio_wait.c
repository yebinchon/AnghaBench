
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct inode {int i_dio_count; int i_state; } ;
struct TYPE_3__ {int wq_entry; } ;


 int DEFINE_WAIT_BIT (TYPE_1__,int *,int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int __I_DIO_WAKEUP ;
 scalar_t__ atomic_read (int *) ;
 int * bit_waitqueue (int *,int ) ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 TYPE_1__ q ;
 int schedule () ;

__attribute__((used)) static void __inode_dio_wait(struct inode *inode)
{
 wait_queue_head_t *wq = bit_waitqueue(&inode->i_state, __I_DIO_WAKEUP);
 DEFINE_WAIT_BIT(q, &inode->i_state, __I_DIO_WAKEUP);

 do {
  prepare_to_wait(wq, &q.wq_entry, TASK_UNINTERRUPTIBLE);
  if (atomic_read(&inode->i_dio_count))
   schedule();
 } while (atomic_read(&inode->i_dio_count));
 finish_wait(wq, &q.wq_entry);
}
