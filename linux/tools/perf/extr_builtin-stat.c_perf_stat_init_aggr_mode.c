
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cpus; } ;
struct TYPE_6__ {TYPE_1__ core; } ;
struct TYPE_5__ {int aggr_mode; scalar_t__ cpus_aggr_map; void* aggr_get_id; int aggr_map; } ;
 int ENOMEM ;
 int cpu_map__build_core_map (int ,int *) ;
 int cpu_map__build_die_map (int ,int *) ;
 int cpu_map__build_socket_map (int ,int *) ;
 TYPE_3__* evsel_list ;
 scalar_t__ perf_cpu_map__empty_new (int) ;
 int perf_cpu_map__max (int ) ;
 void* perf_stat__get_core_cached ;
 void* perf_stat__get_die_cached ;
 void* perf_stat__get_socket_cached ;
 int perror (char*) ;
 TYPE_2__ stat_config ;
 int term_percore_set () ;

__attribute__((used)) static int perf_stat_init_aggr_mode(void)
{
 int nr;

 switch (stat_config.aggr_mode) {
 case 130:
  if (cpu_map__build_socket_map(evsel_list->core.cpus, &stat_config.aggr_map)) {
   perror("cannot build socket map");
   return -1;
  }
  stat_config.aggr_get_id = perf_stat__get_socket_cached;
  break;
 case 133:
  if (cpu_map__build_die_map(evsel_list->core.cpus, &stat_config.aggr_map)) {
   perror("cannot build die map");
   return -1;
  }
  stat_config.aggr_get_id = perf_stat__get_die_cached;
  break;
 case 134:
  if (cpu_map__build_core_map(evsel_list->core.cpus, &stat_config.aggr_map)) {
   perror("cannot build core map");
   return -1;
  }
  stat_config.aggr_get_id = perf_stat__get_core_cached;
  break;
 case 131:
  if (term_percore_set()) {
   if (cpu_map__build_core_map(evsel_list->core.cpus,
          &stat_config.aggr_map)) {
    perror("cannot build core map");
    return -1;
   }
   stat_config.aggr_get_id = perf_stat__get_core_cached;
  }
  break;
 case 132:
 case 129:
 case 128:
 default:
  break;
 }






 nr = perf_cpu_map__max(evsel_list->core.cpus);
 stat_config.cpus_aggr_map = perf_cpu_map__empty_new(nr + 1);
 return stat_config.cpus_aggr_map ? 0 : -ENOMEM;
}
