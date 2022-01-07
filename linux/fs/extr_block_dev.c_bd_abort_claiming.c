
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;


 int bd_clear_claiming (struct block_device*,void*) ;
 int bdev_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void bd_abort_claiming(struct block_device *bdev, struct block_device *whole,
         void *holder)
{
 spin_lock(&bdev_lock);
 bd_clear_claiming(whole, holder);
 spin_unlock(&bdev_lock);
}
