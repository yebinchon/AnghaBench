
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned long tv_sec; unsigned long tv_nsec; } ;


 int CLOCK_MONOTONIC ;
 int clock_gettime (int ,struct timespec*) ;

__attribute__((used)) static unsigned long get_nsecs(void)
{
 struct timespec ts;

 clock_gettime(CLOCK_MONOTONIC, &ts);
 return ts.tv_sec * 1000000000UL + ts.tv_nsec;
}
