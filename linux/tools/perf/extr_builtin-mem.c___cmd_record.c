
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_mem {int operation; scalar_t__ phys_addr; } ;
struct option {int dummy; } ;
struct TYPE_2__ {int record; int supported; } ;


 int MEM_OPERATION_LOAD ;
 int MEM_OPERATION_STORE ;
 struct option OPT_BOOLEAN (char,char*,int*,char*) ;
 struct option OPT_CALLBACK (char,char*,struct perf_mem**,char*,char*,int ) ;
 struct option OPT_END () ;
 struct option OPT_INCR (char,char*,scalar_t__*,char*) ;
 struct option OPT_UINTEGER (int ,char*,int *,char*) ;
 int PARSE_OPT_KEEP_UNKNOWN ;
 size_t PERF_MEM_EVENTS__LOAD ;
 int PERF_MEM_EVENTS__MAX ;
 size_t PERF_MEM_EVENTS__STORE ;
 char** calloc (int,int) ;
 int cmd_record (int,char const**) ;
 int free (char const**) ;
 int parse_options (int,char const**,struct option*,int ,int ) ;
 int parse_record_events ;
 TYPE_1__* perf_mem_events ;
 int perf_mem_events__loads_ldlat ;
 char* perf_mem_events__name (int) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,char*) ;
 int record_mem_usage ;
 scalar_t__ verbose ;

__attribute__((used)) static int __cmd_record(int argc, const char **argv, struct perf_mem *mem)
{
 int rec_argc, i = 0, j;
 const char **rec_argv;
 int ret;
 bool all_user = 0, all_kernel = 0;
 struct option options[] = {
 OPT_CALLBACK('e', "event", &mem, "event",
       "event selector. use 'perf mem record -e list' to list available events",
       parse_record_events),
 OPT_UINTEGER(0, "ldlat", &perf_mem_events__loads_ldlat, "mem-loads latency"),
 OPT_INCR('v', "verbose", &verbose,
   "be more verbose (show counter open errors, etc)"),
 OPT_BOOLEAN('U', "all-user", &all_user, "collect only user level data"),
 OPT_BOOLEAN('K', "all-kernel", &all_kernel, "collect only kernel level data"),
 OPT_END()
 };

 argc = parse_options(argc, argv, options, record_mem_usage,
        PARSE_OPT_KEEP_UNKNOWN);

 rec_argc = argc + 9;
 rec_argv = calloc(rec_argc + 1, sizeof(char *));
 if (!rec_argv)
  return -1;

 rec_argv[i++] = "record";

 if (mem->operation & MEM_OPERATION_LOAD)
  perf_mem_events[PERF_MEM_EVENTS__LOAD].record = 1;

 if (mem->operation & MEM_OPERATION_STORE)
  perf_mem_events[PERF_MEM_EVENTS__STORE].record = 1;

 if (perf_mem_events[PERF_MEM_EVENTS__LOAD].record)
  rec_argv[i++] = "-W";

 rec_argv[i++] = "-d";

 if (mem->phys_addr)
  rec_argv[i++] = "--phys-data";

 for (j = 0; j < PERF_MEM_EVENTS__MAX; j++) {
  if (!perf_mem_events[j].record)
   continue;

  if (!perf_mem_events[j].supported) {
   pr_err("failed: event '%s' not supported\n",
          perf_mem_events__name(j));
   free(rec_argv);
   return -1;
  }

  rec_argv[i++] = "-e";
  rec_argv[i++] = perf_mem_events__name(j);
 };

 if (all_user)
  rec_argv[i++] = "--all-user";

 if (all_kernel)
  rec_argv[i++] = "--all-kernel";

 for (j = 0; j < argc; j++, i++)
  rec_argv[i] = argv[j];

 if (verbose > 0) {
  pr_debug("calling: record ");

  while (rec_argv[j]) {
   pr_debug("%s ", rec_argv[j]);
   j++;
  }
  pr_debug("\n");
 }

 ret = cmd_record(i, rec_argv);
 free(rec_argv);
 return ret;
}
