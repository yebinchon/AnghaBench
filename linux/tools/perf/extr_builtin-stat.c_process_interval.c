
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_2__ {int interval; } ;


 int CLOCK_MONOTONIC ;
 int INTERVAL ;
 int NSEC_PER_SEC ;
 scalar_t__ STAT_RECORD ;
 scalar_t__ WRITE_STAT_ROUND_EVENT (scalar_t__,int ) ;
 int clock_gettime (int ,struct timespec*) ;
 int diff_timespec (struct timespec*,struct timespec*,int *) ;
 int init_stats (int *) ;
 int pr_err (char*) ;
 int print_counters (struct timespec*,int ,int *) ;
 int read_counters (struct timespec*) ;
 int ref_time ;
 TYPE_1__ stat_config ;
 int update_stats (int *,int) ;
 int walltime_nsecs_stats ;

__attribute__((used)) static void process_interval(void)
{
 struct timespec ts, rs;

 clock_gettime(CLOCK_MONOTONIC, &ts);
 diff_timespec(&rs, &ts, &ref_time);

 read_counters(&rs);

 if (STAT_RECORD) {
  if (WRITE_STAT_ROUND_EVENT(rs.tv_sec * NSEC_PER_SEC + rs.tv_nsec, INTERVAL))
   pr_err("failed to write stat round event\n");
 }

 init_stats(&walltime_nsecs_stats);
 update_stats(&walltime_nsecs_stats, stat_config.interval * 1000000);
 print_counters(&rs, 0, ((void*)0));
}
