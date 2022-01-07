
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct perf_event {int group_caps; } ;


 int PERF_EV_CAP_READ_ACTIVE_PKG ;
 int smp_processor_id () ;
 int topology_physical_package_id (int) ;

__attribute__((used)) static int __perf_event_read_cpu(struct perf_event *event, int event_cpu)
{
 u16 local_pkg, event_pkg;

 if (event->group_caps & PERF_EV_CAP_READ_ACTIVE_PKG) {
  int local_cpu = smp_processor_id();

  event_pkg = topology_physical_package_id(event_cpu);
  local_pkg = topology_physical_package_id(local_cpu);

  if (event_pkg == local_pkg)
   return local_cpu;
 }

 return event_cpu;
}
