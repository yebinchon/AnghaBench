
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct bio {struct task_struct* bi_private; } ;


 int WRITE_ONCE (struct task_struct*,int *) ;
 int blk_wake_io_task (struct task_struct*) ;

__attribute__((used)) static void blkdev_bio_end_io_simple(struct bio *bio)
{
 struct task_struct *waiter = bio->bi_private;

 WRITE_ONCE(bio->bi_private, ((void*)0));
 blk_wake_io_task(waiter);
}
