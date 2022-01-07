
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {int dummy; } ;
struct TYPE_2__ {int expires; int clockid; } ;
struct restart_block {TYPE_1__ nanosleep; } ;
typedef int clockid_t ;


 int TIMER_ABSTIME ;
 long do_cpu_nanosleep (int ,int ,struct timespec64*) ;
 struct timespec64 ns_to_timespec64 (int ) ;

__attribute__((used)) static long posix_cpu_nsleep_restart(struct restart_block *restart_block)
{
 clockid_t which_clock = restart_block->nanosleep.clockid;
 struct timespec64 t;

 t = ns_to_timespec64(restart_block->nanosleep.expires);

 return do_cpu_nanosleep(which_clock, TIMER_ABSTIME, &t);
}
