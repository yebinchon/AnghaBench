
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
typedef int clockid_t ;


 int EPERM ;
 int validate_clock_permissions (int const) ;

__attribute__((used)) static int
posix_cpu_clock_set(const clockid_t clock, const struct timespec64 *tp)
{
 int error = validate_clock_permissions(clock);





 return error ? : -EPERM;
}
