
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;



time64_t mktime64(const unsigned int year0, const unsigned int mon0,
  const unsigned int day, const unsigned int hour,
  const unsigned int min, const unsigned int sec)
{
 unsigned int mon = mon0, year = year0;


 if (0 >= (int) (mon -= 2)) {
  mon += 12;
  year -= 1;
 }

 return ((((time64_t)
    (year/4 - year/100 + year/400 + 367*mon/12 + day) +
    year*365 - 719499
     )*24 + hour
   )*60 + min
 )*60 + sec;
}
