
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned long long tv_sec; scalar_t__ tv_nsec; } ;
typedef scalar_t__ __u64 ;


 int CLOCK_MONOTONIC ;
 int clock_gettime (int ,struct timespec*) ;

__attribute__((used)) static __u64 time_get_ns(void)
{
 struct timespec ts;

 clock_gettime(CLOCK_MONOTONIC, &ts);
 return ts.tv_sec * 1000000000ull + ts.tv_nsec;
}
