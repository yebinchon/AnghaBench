
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct tomoyo_time {scalar_t__ year; scalar_t__ month; int day; int hour; int min; int sec; } ;
struct tm {scalar_t__ tm_year; scalar_t__ tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;


 int time64_to_tm (int ,int ,struct tm*) ;

void tomoyo_convert_time(time64_t time64, struct tomoyo_time *stamp)
{
 struct tm tm;

 time64_to_tm(time64, 0, &tm);
 stamp->sec = tm.tm_sec;
 stamp->min = tm.tm_min;
 stamp->hour = tm.tm_hour;
 stamp->day = tm.tm_mday;
 stamp->month = tm.tm_mon + 1;
 stamp->year = tm.tm_year + 1900;
}
