
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timespec {int dummy; } ;


 int clock_gettime (int ,struct timespec*) ;
 int get_arch_timestamp () ;
 int perf_clk_id ;
 int timespec_to_ns (struct timespec*) ;
 scalar_t__ use_arch_timestamp ;

__attribute__((used)) static inline uint64_t
perf_get_timestamp(void)
{
 struct timespec ts;
 int ret;

 if (use_arch_timestamp)
  return get_arch_timestamp();

 ret = clock_gettime(perf_clk_id, &ts);
 if (ret)
  return 0;

 return timespec_to_ns(&ts);
}
