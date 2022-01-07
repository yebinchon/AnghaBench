
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int mktime64 (int,int,int,int,int,int) ;

int iso_date(u8 *p, int flag)
{
 int year, month, day, hour, minute, second, tz;
 int crtime;

 year = p[0];
 month = p[1];
 day = p[2];
 hour = p[3];
 minute = p[4];
 second = p[5];
 if (flag == 0) tz = p[6];
 else tz = 0;

 if (year < 0) {
  crtime = 0;
 } else {
  crtime = mktime64(year+1900, month, day, hour, minute, second);


  if (tz & 0x80)
   tz |= (-1 << 8);
  if (-52 <= tz && tz <= 52)
   crtime -= tz * 15 * 60;
 }
 return crtime;
}
