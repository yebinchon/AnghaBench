
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ irq_capable; } ;


 int DEFINE_TORTURE_RANDOM (int ) ;
 int HZ ;
 int MAX_NICE ;
 int VERBOSE_TOROUT_STRING (char*) ;
 TYPE_1__* cur_ops ;
 int current ;
 int del_timer_sync (struct timer_list*) ;
 int destroy_timer_on_stack (struct timer_list*) ;
 scalar_t__ irqreader ;
 int jiffies ;
 int mod_timer (struct timer_list*,int) ;
 int num_online_cpus () ;
 int rand ;
 int rcu_torture_one_read (int *) ;
 int rcu_torture_timer ;
 int schedule_timeout_interruptible (int) ;
 int set_user_nice (int ,int ) ;
 int stutter_wait (char*) ;
 scalar_t__ time_after (int,unsigned long) ;
 int timer_pending (struct timer_list*) ;
 int timer_setup_on_stack (struct timer_list*,int ,int ) ;
 int torture_kthread_stopping (char*) ;
 int torture_must_stop () ;

__attribute__((used)) static int
rcu_torture_reader(void *arg)
{
 unsigned long lastsleep = jiffies;
 long myid = (long)arg;
 int mynumonline = myid;
 DEFINE_TORTURE_RANDOM(rand);
 struct timer_list t;

 VERBOSE_TOROUT_STRING("rcu_torture_reader task started");
 set_user_nice(current, MAX_NICE);
 if (irqreader && cur_ops->irq_capable)
  timer_setup_on_stack(&t, rcu_torture_timer, 0);

 do {
  if (irqreader && cur_ops->irq_capable) {
   if (!timer_pending(&t))
    mod_timer(&t, jiffies + 1);
  }
  if (!rcu_torture_one_read(&rand))
   schedule_timeout_interruptible(HZ);
  if (time_after(jiffies, lastsleep)) {
   schedule_timeout_interruptible(1);
   lastsleep = jiffies + 10;
  }
  while (num_online_cpus() < mynumonline && !torture_must_stop())
   schedule_timeout_interruptible(HZ / 5);
  stutter_wait("rcu_torture_reader");
 } while (!torture_must_stop());
 if (irqreader && cur_ops->irq_capable) {
  del_timer_sync(&t);
  destroy_timer_on_stack(&t);
 }
 torture_kthread_stopping("rcu_torture_reader");
 return 0;
}
