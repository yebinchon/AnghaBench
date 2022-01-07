
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 struct option OPT_BOOLEAN (char,char*,int*,char*) ;
 struct option OPT_END () ;
 struct option OPT_INCR (int ,char*,int *,char*) ;
 int PARSE_OPT_HIDDEN ;
 int PARSE_OPT_STOP_AT_NON_OPTION ;
 int PERF_COUNT_HW_MAX ;
 int PERF_COUNT_SW_MAX ;
 int PERF_TYPE_HARDWARE ;
 int PERF_TYPE_SOFTWARE ;
 scalar_t__ asprintf (char**,char*,char const*) ;
 int desc_flag ;
 int details_flag ;
 int event_symbols_hw ;
 int event_symbols_sw ;
 int free (char*) ;
 int metricgroup__print (int,int,char*,int,int) ;
 scalar_t__ pager_in_use () ;
 int parse_options (int,char const**,struct option*,char const* const*,int ) ;
 int print_events (char const*,int,int,int,int) ;
 int print_hwcache_events (char*,int) ;
 int print_pmu_events (char*,int,int,int,int) ;
 int print_sdt_events (char*,char*,int) ;
 int print_symbol_events (char*,int ,int ,int ,int) ;
 int print_tool_events (char*,int) ;
 int print_tracepoint_events (char*,char*,int) ;
 int printf (char*) ;
 int set_option_flag (struct option*,int ,char*,int ) ;
 int setup_pager () ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;
 int verbose ;

int cmd_list(int argc, const char **argv)
{
 int i;
 bool raw_dump = 0;
 bool long_desc_flag = 0;
 struct option list_options[] = {
  OPT_BOOLEAN(0, "raw-dump", &raw_dump, "Dump raw events"),
  OPT_BOOLEAN('d', "desc", &desc_flag,
       "Print extra event descriptions. --no-desc to not print."),
  OPT_BOOLEAN('v', "long-desc", &long_desc_flag,
       "Print longer event descriptions."),
  OPT_BOOLEAN(0, "details", &details_flag,
       "Print information on the perf event names and expressions used internally by events."),
  OPT_INCR(0, "debug", &verbose,
        "Enable debugging output"),
  OPT_END()
 };
 const char * const list_usage[] = {
  "perf list [<options>] [hw|sw|cache|tracepoint|pmu|sdt|event_glob]",
  ((void*)0)
 };

 set_option_flag(list_options, 0, "raw-dump", PARSE_OPT_HIDDEN);

 argc = parse_options(argc, argv, list_options, list_usage,
        PARSE_OPT_STOP_AT_NON_OPTION);

 setup_pager();

 if (!raw_dump && pager_in_use())
  printf("\nList of pre-defined events (to be used in -e):\n\n");

 if (argc == 0) {
  print_events(((void*)0), raw_dump, !desc_flag, long_desc_flag,
    details_flag);
  return 0;
 }

 for (i = 0; i < argc; ++i) {
  char *sep, *s;

  if (strcmp(argv[i], "tracepoint") == 0)
   print_tracepoint_events(((void*)0), ((void*)0), raw_dump);
  else if (strcmp(argv[i], "hw") == 0 ||
    strcmp(argv[i], "hardware") == 0)
   print_symbol_events(((void*)0), PERF_TYPE_HARDWARE,
     event_symbols_hw, PERF_COUNT_HW_MAX, raw_dump);
  else if (strcmp(argv[i], "sw") == 0 ||
    strcmp(argv[i], "software") == 0) {
   print_symbol_events(((void*)0), PERF_TYPE_SOFTWARE,
     event_symbols_sw, PERF_COUNT_SW_MAX, raw_dump);
   print_tool_events(((void*)0), raw_dump);
  } else if (strcmp(argv[i], "cache") == 0 ||
    strcmp(argv[i], "hwcache") == 0)
   print_hwcache_events(((void*)0), raw_dump);
  else if (strcmp(argv[i], "pmu") == 0)
   print_pmu_events(((void*)0), raw_dump, !desc_flag,
      long_desc_flag, details_flag);
  else if (strcmp(argv[i], "sdt") == 0)
   print_sdt_events(((void*)0), ((void*)0), raw_dump);
  else if (strcmp(argv[i], "metric") == 0 || strcmp(argv[i], "metrics") == 0)
   metricgroup__print(1, 0, ((void*)0), raw_dump, details_flag);
  else if (strcmp(argv[i], "metricgroup") == 0 || strcmp(argv[i], "metricgroups") == 0)
   metricgroup__print(0, 1, ((void*)0), raw_dump, details_flag);
  else if ((sep = strchr(argv[i], ':')) != ((void*)0)) {
   int sep_idx;

   if (sep == ((void*)0)) {
    print_events(argv[i], raw_dump, !desc_flag,
       long_desc_flag,
       details_flag);
    continue;
   }
   sep_idx = sep - argv[i];
   s = strdup(argv[i]);
   if (s == ((void*)0))
    return -1;

   s[sep_idx] = '\0';
   print_tracepoint_events(s, s + sep_idx + 1, raw_dump);
   print_sdt_events(s, s + sep_idx + 1, raw_dump);
   metricgroup__print(1, 1, s, raw_dump, details_flag);
   free(s);
  } else {
   if (asprintf(&s, "*%s*", argv[i]) < 0) {
    printf("Critical: Not enough memory! Trying to continue...\n");
    continue;
   }
   print_symbol_events(s, PERF_TYPE_HARDWARE,
         event_symbols_hw, PERF_COUNT_HW_MAX, raw_dump);
   print_symbol_events(s, PERF_TYPE_SOFTWARE,
         event_symbols_sw, PERF_COUNT_SW_MAX, raw_dump);
   print_tool_events(s, raw_dump);
   print_hwcache_events(s, raw_dump);
   print_pmu_events(s, raw_dump, !desc_flag,
      long_desc_flag,
      details_flag);
   print_tracepoint_events(((void*)0), s, raw_dump);
   print_sdt_events(((void*)0), s, raw_dump);
   metricgroup__print(1, 1, s, raw_dump, details_flag);
   free(s);
  }
 }
 return 0;
}
