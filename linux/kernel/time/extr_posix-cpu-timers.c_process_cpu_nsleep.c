
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
typedef int clockid_t ;


 int PROCESS_CLOCK ;
 int posix_cpu_nsleep (int ,int,struct timespec64 const*) ;

__attribute__((used)) static int process_cpu_nsleep(const clockid_t which_clock, int flags,
         const struct timespec64 *rqtp)
{
 return posix_cpu_nsleep(PROCESS_CLOCK, flags, rqtp);
}
