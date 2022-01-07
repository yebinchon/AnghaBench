
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {void* bd_claiming; } ;


 int BUG_ON (int) ;
 int bdev_lock ;
 int lockdep_assert_held (int *) ;
 int wake_up_bit (void**,int ) ;

__attribute__((used)) static void bd_clear_claiming(struct block_device *whole, void *holder)
{
 lockdep_assert_held(&bdev_lock);

 BUG_ON(whole->bd_claiming != holder);
 whole->bd_claiming = ((void*)0);
 wake_up_bit(&whole->bd_claiming, 0);
}
