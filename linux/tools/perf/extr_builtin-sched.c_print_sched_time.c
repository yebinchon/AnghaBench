
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long NSEC_PER_MSEC ;
 unsigned long long NSEC_PER_USEC ;
 int printf (char*,int,unsigned long,unsigned long) ;

__attribute__((used)) static inline void print_sched_time(unsigned long long nsecs, int width)
{
 unsigned long msecs;
 unsigned long usecs;

 msecs = nsecs / NSEC_PER_MSEC;
 nsecs -= msecs * NSEC_PER_MSEC;
 usecs = nsecs / NSEC_PER_USEC;
 printf("%*lu.%03lu ", width, msecs, usecs);
}
