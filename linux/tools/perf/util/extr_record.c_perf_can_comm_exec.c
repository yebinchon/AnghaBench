
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perf_probe_api (int ) ;
 int perf_probe_comm_exec ;

__attribute__((used)) static bool perf_can_comm_exec(void)
{
 return perf_probe_api(perf_probe_comm_exec);
}
