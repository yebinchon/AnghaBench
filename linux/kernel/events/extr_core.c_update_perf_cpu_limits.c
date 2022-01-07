
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int WRITE_ONCE (int ,int) ;
 int div_u64 (int,int) ;
 int perf_sample_allowed_ns ;
 int perf_sample_period_ns ;
 int sysctl_perf_cpu_time_max_percent ;

__attribute__((used)) static void update_perf_cpu_limits(void)
{
 u64 tmp = perf_sample_period_ns;

 tmp *= sysctl_perf_cpu_time_max_percent;
 tmp = div_u64(tmp, 100);
 if (!tmp)
  tmp = 1;

 WRITE_ONCE(perf_sample_allowed_ns, tmp);
}
