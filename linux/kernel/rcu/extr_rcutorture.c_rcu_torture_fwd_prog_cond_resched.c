
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_NO_HZ_FULL ;
 int CONFIG_PREEMPT ;
 scalar_t__ IS_ENABLED (int ) ;
 int cond_resched () ;
 scalar_t__ need_resched () ;
 int schedule () ;

__attribute__((used)) static void rcu_torture_fwd_prog_cond_resched(unsigned long iter)
{
 if (IS_ENABLED(CONFIG_PREEMPT) && IS_ENABLED(CONFIG_NO_HZ_FULL)) {

  if (need_resched() || (iter & 0xfff))
   schedule();
 } else {

  cond_resched();
 }
}
