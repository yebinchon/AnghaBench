
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k_itimer {int it_clock; } ;


 int THREAD_CLOCK ;
 int posix_cpu_timer_create (struct k_itimer*) ;

__attribute__((used)) static int thread_cpu_timer_create(struct k_itimer *timer)
{
 timer->it_clock = THREAD_CLOCK;
 return posix_cpu_timer_create(timer);
}
