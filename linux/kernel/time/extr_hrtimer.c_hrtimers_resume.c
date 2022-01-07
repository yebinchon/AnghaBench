
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clock_was_set_delayed () ;
 int lockdep_assert_irqs_disabled () ;
 int retrigger_next_event (int *) ;

void hrtimers_resume(void)
{
 lockdep_assert_irqs_disabled();

 retrigger_next_event(((void*)0));

 clock_was_set_delayed();
}
