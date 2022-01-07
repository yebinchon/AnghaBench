
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct perf_stat {TYPE_3__* session; } ;
struct perf_env {int dummy; } ;
struct TYPE_6__ {int cpus; } ;
struct TYPE_10__ {TYPE_1__ core; } ;
struct TYPE_9__ {int aggr_mode; int aggr_get_id; int aggr_map; } ;
struct TYPE_7__ {struct perf_env env; } ;
struct TYPE_8__ {TYPE_2__ header; } ;
 TYPE_5__* evsel_list ;
 int perf_env__build_core_map (struct perf_env*,int ,int *) ;
 int perf_env__build_die_map (struct perf_env*,int ,int *) ;
 int perf_env__build_socket_map (struct perf_env*,int ,int *) ;
 int perf_stat__get_core_file ;
 int perf_stat__get_die_file ;
 int perf_stat__get_socket_file ;
 int perror (char*) ;
 TYPE_4__ stat_config ;

__attribute__((used)) static int perf_stat_init_aggr_mode_file(struct perf_stat *st)
{
 struct perf_env *env = &st->session->header.env;

 switch (stat_config.aggr_mode) {
 case 130:
  if (perf_env__build_socket_map(env, evsel_list->core.cpus, &stat_config.aggr_map)) {
   perror("cannot build socket map");
   return -1;
  }
  stat_config.aggr_get_id = perf_stat__get_socket_file;
  break;
 case 133:
  if (perf_env__build_die_map(env, evsel_list->core.cpus, &stat_config.aggr_map)) {
   perror("cannot build die map");
   return -1;
  }
  stat_config.aggr_get_id = perf_stat__get_die_file;
  break;
 case 134:
  if (perf_env__build_core_map(env, evsel_list->core.cpus, &stat_config.aggr_map)) {
   perror("cannot build core map");
   return -1;
  }
  stat_config.aggr_get_id = perf_stat__get_core_file;
  break;
 case 131:
 case 132:
 case 129:
 case 128:
 default:
  break;
 }

 return 0;
}
