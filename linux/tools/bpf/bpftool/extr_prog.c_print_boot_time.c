
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int dummy; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int __u64 ;


 int CLOCK_BOOTTIME ;
 int CLOCK_REALTIME ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 scalar_t__ json_output ;
 int localtime_r (scalar_t__*,struct tm*) ;
 int perror (char*) ;
 int snprintf (char*,unsigned int,char*,int) ;
 int strftime (char*,unsigned int,char*,struct tm*) ;

__attribute__((used)) static void print_boot_time(__u64 nsecs, char *buf, unsigned int size)
{
 struct timespec real_time_ts, boot_time_ts;
 time_t wallclock_secs;
 struct tm load_tm;

 buf[--size] = '\0';

 if (clock_gettime(CLOCK_REALTIME, &real_time_ts) ||
     clock_gettime(CLOCK_BOOTTIME, &boot_time_ts)) {
  perror("Can't read clocks");
  snprintf(buf, size, "%llu", nsecs / 1000000000);
  return;
 }

 wallclock_secs = (real_time_ts.tv_sec - boot_time_ts.tv_sec) +
  (real_time_ts.tv_nsec - boot_time_ts.tv_nsec + nsecs) /
  1000000000;


 if (!localtime_r(&wallclock_secs, &load_tm)) {
  snprintf(buf, size, "%llu", nsecs / 1000000000);
  return;
 }

 if (json_output)
  strftime(buf, size, "%s", &load_tm);
 else
  strftime(buf, size, "%FT%T%z", &load_tm);
}
