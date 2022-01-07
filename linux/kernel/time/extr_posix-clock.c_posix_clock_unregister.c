
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_clock {int zombie; int kref; int rwsem; int cdev; } ;


 int cdev_del (int *) ;
 int delete_clock ;
 int down_write (int *) ;
 int kref_put (int *,int ) ;
 int up_write (int *) ;

void posix_clock_unregister(struct posix_clock *clk)
{
 cdev_del(&clk->cdev);

 down_write(&clk->rwsem);
 clk->zombie = 1;
 up_write(&clk->rwsem);

 kref_put(&clk->kref, delete_clock);
}
