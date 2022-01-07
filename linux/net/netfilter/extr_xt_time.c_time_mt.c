
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xtm {int weekday; int monthday; } ;
struct xt_time_info {int flags; scalar_t__ date_start; scalar_t__ date_stop; unsigned int daytime_start; unsigned int daytime_stop; int weekdays_match; int monthdays_match; } ;
struct xt_action_param {struct xt_time_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
typedef scalar_t__ s64 ;
struct TYPE_2__ {int tz_minuteswest; } ;


 scalar_t__ SECONDS_PER_DAY ;
 int XT_TIME_ALL_MONTHDAYS ;
 int XT_TIME_CONTIGUOUS ;
 int XT_TIME_LOCAL_TZ ;
 scalar_t__ get_seconds () ;
 unsigned int localtime_1 (struct xtm*,scalar_t__) ;
 int localtime_2 (struct xtm*,scalar_t__) ;
 int localtime_3 (struct xtm*,scalar_t__) ;
 TYPE_1__ sys_tz ;

__attribute__((used)) static bool
time_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_time_info *info = par->matchinfo;
 unsigned int packet_time;
 struct xtm current_time;
 s64 stamp;
 stamp = get_seconds();

 if (info->flags & XT_TIME_LOCAL_TZ)

  stamp -= 60 * sys_tz.tz_minuteswest;
 if (stamp < info->date_start || stamp > info->date_stop)
  return 0;

 packet_time = localtime_1(&current_time, stamp);

 if (info->daytime_start < info->daytime_stop) {
  if (packet_time < info->daytime_start ||
      packet_time > info->daytime_stop)
   return 0;
 } else {
  if (packet_time < info->daytime_start &&
      packet_time > info->daytime_stop)
   return 0;
  if ((info->flags & XT_TIME_CONTIGUOUS) &&
       packet_time <= info->daytime_stop)
   stamp -= SECONDS_PER_DAY;
 }

 localtime_2(&current_time, stamp);

 if (!(info->weekdays_match & (1 << current_time.weekday)))
  return 0;


 if (info->monthdays_match != XT_TIME_ALL_MONTHDAYS) {
  localtime_3(&current_time, stamp);
  if (!(info->monthdays_match & (1 << current_time.monthday)))
   return 0;
 }

 return 1;
}
