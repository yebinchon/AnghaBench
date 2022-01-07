
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int clockid_t ;


 scalar_t__ CPUCLOCK_SCHED ;
 scalar_t__ CPUCLOCK_WHICH (int const) ;
 int HZ ;
 int NSEC_PER_SEC ;
 int validate_clock_permissions (int const) ;

__attribute__((used)) static int
posix_cpu_clock_getres(const clockid_t which_clock, struct timespec64 *tp)
{
 int error = validate_clock_permissions(which_clock);

 if (!error) {
  tp->tv_sec = 0;
  tp->tv_nsec = ((NSEC_PER_SEC + HZ - 1) / HZ);
  if (CPUCLOCK_WHICH(which_clock) == CPUCLOCK_SCHED) {





   tp->tv_nsec = 1;
  }
 }
 return error;
}
