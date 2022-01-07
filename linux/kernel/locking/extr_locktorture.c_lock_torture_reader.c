
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lock_stress_stats {int n_lock_acquired; int n_lock_fail; } ;
struct TYPE_4__ {TYPE_1__* cur_ops; } ;
struct TYPE_3__ {int (* readunlock ) () ;int (* read_delay ) (int *) ;int (* readlock ) () ;} ;
typedef int DEFINE_TORTURE_RANDOM ;


 int MAX_NICE ;
 int VERBOSE_TOROUT_STRING (char*) ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int current ;
 TYPE_2__ cxt ;
 int lock_is_read_held ;
 int lock_is_write_held ;
 int schedule_timeout_uninterruptible (int) ;
 int set_user_nice (int ,int ) ;
 int stub1 () ;
 int stub2 (int *) ;
 int stub3 () ;
 int stutter_wait (char*) ;
 int torture_kthread_stopping (char*) ;
 int torture_must_stop () ;
 int torture_random (int *) ;

__attribute__((used)) static int lock_torture_reader(void *arg)
{
 struct lock_stress_stats *lrsp = arg;
 static DEFINE_TORTURE_RANDOM(rand);

 VERBOSE_TOROUT_STRING("lock_torture_reader task started");
 set_user_nice(current, MAX_NICE);

 do {
  if ((torture_random(&rand) & 0xfffff) == 0)
   schedule_timeout_uninterruptible(1);

  cxt.cur_ops->readlock();
  lock_is_read_held = 1;
  if (WARN_ON_ONCE(lock_is_write_held))
   lrsp->n_lock_fail++;

  lrsp->n_lock_acquired++;
  cxt.cur_ops->read_delay(&rand);
  lock_is_read_held = 0;
  cxt.cur_ops->readunlock();

  stutter_wait("lock_torture_reader");
 } while (!torture_must_stop());
 torture_kthread_stopping("lock_torture_reader");
 return 0;
}
