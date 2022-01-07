
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sysinfo {scalar_t__ procs; void** loads; int uptime; } ;


 int NSEC_PER_SEC ;
 void** avenrun ;
 int div_u64 (int ,int ) ;
 int ktime_get_mono_fast_ns () ;
 int memset (struct sysinfo*,int ,int) ;
 scalar_t__ nr_threads ;
 int si_meminfo (struct sysinfo*) ;

__attribute__((used)) static void kdb_sysinfo(struct sysinfo *val)
{
 u64 uptime = ktime_get_mono_fast_ns();

 memset(val, 0, sizeof(*val));
 val->uptime = div_u64(uptime, NSEC_PER_SEC);
 val->loads[0] = avenrun[0];
 val->loads[1] = avenrun[1];
 val->loads[2] = avenrun[2];
 val->procs = nr_threads-1;
 si_meminfo(val);

 return;
}
