
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time64_t ;
struct tm {int tm_year; int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; } ;
struct timestamp {int centiseconds; int hundredsOfMicroseconds; int microseconds; int second; int minute; int hour; int day; scalar_t__ month; void* year; void* typeAndTimezone; } ;
struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int int16_t ;
struct TYPE_2__ {int tz_minuteswest; } ;


 void* cpu_to_le16 (int) ;
 TYPE_1__ sys_tz ;
 int time64_to_tm (scalar_t__,int ,struct tm*) ;

void
udf_time_to_disk_stamp(struct timestamp *dest, struct timespec64 ts)
{
 time64_t seconds;
 int16_t offset;
 struct tm tm;

 offset = -sys_tz.tz_minuteswest;

 dest->typeAndTimezone = cpu_to_le16(0x1000 | (offset & 0x0FFF));

 seconds = ts.tv_sec + offset * 60;
 time64_to_tm(seconds, 0, &tm);
 dest->year = cpu_to_le16(tm.tm_year + 1900);
 dest->month = tm.tm_mon + 1;
 dest->day = tm.tm_mday;
 dest->hour = tm.tm_hour;
 dest->minute = tm.tm_min;
 dest->second = tm.tm_sec;
 dest->centiseconds = ts.tv_nsec / 10000000;
 dest->hundredsOfMicroseconds = (ts.tv_nsec / 1000 -
     dest->centiseconds * 10000) / 100;
 dest->microseconds = (ts.tv_nsec / 1000 - dest->centiseconds * 10000 -
         dest->hundredsOfMicroseconds * 100);
}
