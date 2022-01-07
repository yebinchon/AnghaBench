
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tm {int tm_year; int tm_mon; int tm_sec; int tm_hour; int tm_min; int tm_mday; } ;
struct timespec64 {int tv_sec; int tv_nsec; } ;
struct msdos_sb_info {int dummy; } ;
typedef int __le16 ;


 int cpu_to_le16 (int) ;
 int fat_tz_offset (struct msdos_sb_info*) ;
 int time64_to_tm (int,int ,struct tm*) ;

void fat_time_unix2fat(struct msdos_sb_info *sbi, struct timespec64 *ts,
         __le16 *time, __le16 *date, u8 *time_cs)
{
 struct tm tm;
 time64_to_tm(ts->tv_sec, -fat_tz_offset(sbi), &tm);


 if (tm.tm_year < 1980 - 1900) {
  *time = 0;
  *date = cpu_to_le16((0 << 9) | (1 << 5) | 1);
  if (time_cs)
   *time_cs = 0;
  return;
 }
 if (tm.tm_year > 2107 - 1900) {
  *time = cpu_to_le16((23 << 11) | (59 << 5) | 29);
  *date = cpu_to_le16((127 << 9) | (12 << 5) | 31);
  if (time_cs)
   *time_cs = 199;
  return;
 }


 tm.tm_year -= 80;

 tm.tm_mon++;

 tm.tm_sec >>= 1;

 *time = cpu_to_le16(tm.tm_hour << 11 | tm.tm_min << 5 | tm.tm_sec);
 *date = cpu_to_le16(tm.tm_year << 9 | tm.tm_mon << 5 | tm.tm_mday);
 if (time_cs)
  *time_cs = (ts->tv_sec & 1) * 100 + ts->tv_nsec / 10000000;
}
