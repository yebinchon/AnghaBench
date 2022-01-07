
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERF_COUNT_HW_MAX ;
 int PERF_COUNT_SW_MAX ;
 size_t PERF_TYPE_BREAKPOINT ;
 int PERF_TYPE_HARDWARE ;
 size_t PERF_TYPE_RAW ;
 int PERF_TYPE_SOFTWARE ;
 int event_symbols_hw ;
 int event_symbols_sw ;
 char** event_type_descriptors ;
 int metricgroup__print (int,int,int *,int,int) ;
 scalar_t__ pager_in_use () ;
 int print_hwcache_events (char const*,int) ;
 int print_pmu_events (char const*,int,int,int,int) ;
 int print_sdt_events (int *,int *,int) ;
 int print_symbol_events (char const*,int ,int ,int ,int) ;
 int print_tool_events (char const*,int) ;
 int print_tracepoint_events (int *,int *,int) ;
 int printf (char*,...) ;

void print_events(const char *event_glob, bool name_only, bool quiet_flag,
   bool long_desc, bool details_flag)
{
 print_symbol_events(event_glob, PERF_TYPE_HARDWARE,
       event_symbols_hw, PERF_COUNT_HW_MAX, name_only);

 print_symbol_events(event_glob, PERF_TYPE_SOFTWARE,
       event_symbols_sw, PERF_COUNT_SW_MAX, name_only);
 print_tool_events(event_glob, name_only);

 print_hwcache_events(event_glob, name_only);

 print_pmu_events(event_glob, name_only, quiet_flag, long_desc,
   details_flag);

 if (event_glob != ((void*)0))
  return;

 if (!name_only) {
  printf("  %-50s [%s]\n",
         "rNNN",
         event_type_descriptors[PERF_TYPE_RAW]);
  printf("  %-50s [%s]\n",
         "cpu/t1=v1[,t2=v2,t3 ...]/modifier",
         event_type_descriptors[PERF_TYPE_RAW]);
  if (pager_in_use())
   printf("   (see 'man perf-list' on how to encode it)\n\n");

  printf("  %-50s [%s]\n",
         "mem:<addr>[/len][:access]",
   event_type_descriptors[PERF_TYPE_BREAKPOINT]);
  if (pager_in_use())
   printf("\n");
 }

 print_tracepoint_events(((void*)0), ((void*)0), name_only);

 print_sdt_events(((void*)0), ((void*)0), name_only);

 metricgroup__print(1, 1, ((void*)0), name_only, details_flag);
}
