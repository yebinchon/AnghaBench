
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct block_device {scalar_t__ bd_claiming; } ;


 int DEFINE_WAIT (int ) ;
 int EBUSY ;
 int TASK_UNINTERRUPTIBLE ;
 int bd_may_claim (struct block_device*,struct block_device*,void*) ;
 int bdev_lock ;
 int * bit_waitqueue (scalar_t__*,int ) ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait ;

__attribute__((used)) static int bd_prepare_to_claim(struct block_device *bdev,
          struct block_device *whole, void *holder)
{
retry:

 if (!bd_may_claim(bdev, whole, holder))
  return -EBUSY;


 if (whole->bd_claiming) {
  wait_queue_head_t *wq = bit_waitqueue(&whole->bd_claiming, 0);
  DEFINE_WAIT(wait);

  prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);
  spin_unlock(&bdev_lock);
  schedule();
  finish_wait(wq, &wait);
  spin_lock(&bdev_lock);
  goto retry;
 }


 return 0;
}
