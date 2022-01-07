
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats_record {int dummy; } ;
typedef int __u32 ;


 struct stats_record* alloc_stats_record () ;
 int free_stats_record (struct stats_record*) ;
 int sleep (int) ;
 int stats_collect (struct stats_record*) ;
 int stats_print (struct stats_record*,struct stats_record*,int,int ) ;
 int swap (struct stats_record**,struct stats_record**) ;

__attribute__((used)) static void stats_poll(int interval, int action, __u32 cfg_opt)
{
 struct stats_record *record, *prev;

 record = alloc_stats_record();
 prev = alloc_stats_record();
 stats_collect(record);

 while (1) {
  swap(&prev, &record);
  stats_collect(record);
  stats_print(record, prev, action, cfg_opt);
  sleep(interval);
 }

 free_stats_record(record);
 free_stats_record(prev);
}
