
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;


 int NSEC_PER_USEC ;
 unsigned long __timespec_to_jiffies (int ,int) ;

unsigned long
timeval_to_jiffies(const struct timeval *value)
{
 return __timespec_to_jiffies(value->tv_sec,
         value->tv_usec * NSEC_PER_USEC);
}
