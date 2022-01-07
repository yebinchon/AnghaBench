
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int sample_window; int sample_width; int lock; } ;


 int USEC_PER_MSEC ;
 int do_div (int,int ) ;
 int get_sample () ;
 TYPE_1__ hwlat_data ;
 int kthread_should_stop () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int move_to_next_cpu () ;
 scalar_t__ msleep_interruptible (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kthread_fn(void *data)
{
 u64 interval;

 while (!kthread_should_stop()) {

  move_to_next_cpu();

  local_irq_disable();
  get_sample();
  local_irq_enable();

  mutex_lock(&hwlat_data.lock);
  interval = hwlat_data.sample_window - hwlat_data.sample_width;
  mutex_unlock(&hwlat_data.lock);

  do_div(interval, USEC_PER_MSEC);


  if (interval < 1)
   interval = 1;

  if (msleep_interruptible(interval))
   break;
 }

 return 0;
}
