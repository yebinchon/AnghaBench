
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct perf_session {int evlist; } ;
struct option {int dummy; } ;
struct TYPE_6__ {char* path; int mode; } ;
struct TYPE_5__ {struct perf_session* session; int tool; TYPE_3__ data; int aggr_mode; } ;
struct TYPE_4__ {int output; } ;


 int AGGR_CORE ;
 int AGGR_DIE ;
 int AGGR_NONE ;
 int AGGR_SOCKET ;
 scalar_t__ IS_ERR (struct perf_session*) ;
 struct option const OPT_END () ;
 struct option const OPT_SET_UINT (char,char*,int *,char*,int ) ;
 struct option const OPT_STRING (char,char*,char**,char*,char*) ;
 int PERF_DATA_MODE_READ ;
 int PTR_ERR (struct perf_session*) ;
 int STDIN_FILENO ;
 scalar_t__ S_ISFIFO (int ) ;
 int evsel_list ;
 int fstat (int ,struct stat*) ;
 char* input_name ;
 int parse_options (int,char const**,struct option const*,int ,int ) ;
 int perf_session__delete (struct perf_session*) ;
 struct perf_session* perf_session__new (TYPE_3__*,int,int *) ;
 int perf_session__process_events (struct perf_session*) ;
 TYPE_2__ perf_stat ;
 TYPE_1__ stat_config ;
 int stat_report_usage ;
 int stderr ;
 int strlen (char*) ;

__attribute__((used)) static int __cmd_report(int argc, const char **argv)
{
 struct perf_session *session;
 const struct option options[] = {
 OPT_STRING('i', "input", &input_name, "file", "input file name"),
 OPT_SET_UINT(0, "per-socket", &perf_stat.aggr_mode,
       "aggregate counts per processor socket", AGGR_SOCKET),
 OPT_SET_UINT(0, "per-die", &perf_stat.aggr_mode,
       "aggregate counts per processor die", AGGR_DIE),
 OPT_SET_UINT(0, "per-core", &perf_stat.aggr_mode,
       "aggregate counts per physical processor core", AGGR_CORE),
 OPT_SET_UINT('A', "no-aggr", &perf_stat.aggr_mode,
       "disable CPU count aggregation", AGGR_NONE),
 OPT_END()
 };
 struct stat st;
 int ret;

 argc = parse_options(argc, argv, options, stat_report_usage, 0);

 if (!input_name || !strlen(input_name)) {
  if (!fstat(STDIN_FILENO, &st) && S_ISFIFO(st.st_mode))
   input_name = "-";
  else
   input_name = "perf.data";
 }

 perf_stat.data.path = input_name;
 perf_stat.data.mode = PERF_DATA_MODE_READ;

 session = perf_session__new(&perf_stat.data, 0, &perf_stat.tool);
 if (IS_ERR(session))
  return PTR_ERR(session);

 perf_stat.session = session;
 stat_config.output = stderr;
 evsel_list = session->evlist;

 ret = perf_session__process_events(session);
 if (ret)
  return ret;

 perf_session__delete(session);
 return 0;
}
