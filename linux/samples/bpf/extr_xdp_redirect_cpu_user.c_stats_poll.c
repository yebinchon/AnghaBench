
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats_record {int dummy; } ;


 int LC_NUMERIC ;
 struct stats_record* alloc_stats_record () ;
 int free_stats_record (struct stats_record*) ;
 int setlocale (int ,char*) ;
 int sleep (int) ;
 int stats_collect (struct stats_record*) ;
 int stats_print (struct stats_record*,struct stats_record*,char*) ;
 int stress_cpumap () ;
 int swap (struct stats_record**,struct stats_record**) ;

__attribute__((used)) static void stats_poll(int interval, bool use_separators, char *prog_name,
         bool stress_mode)
{
 struct stats_record *record, *prev;

 record = alloc_stats_record();
 prev = alloc_stats_record();
 stats_collect(record);


 if (use_separators)
  setlocale(LC_NUMERIC, "en_US");

 while (1) {
  swap(&prev, &record);
  stats_collect(record);
  stats_print(record, prev, prog_name);
  sleep(interval);
  if (stress_mode)
   stress_cpumap();
 }

 free_stats_record(record);
 free_stats_record(prev);
}
