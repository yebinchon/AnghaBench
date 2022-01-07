
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; int tv_sec; } ;


 unsigned long __timespec64_to_jiffies (int ,int ) ;

unsigned long
timespec64_to_jiffies(const struct timespec64 *value)
{
 return __timespec64_to_jiffies(value->tv_sec, value->tv_nsec);
}
