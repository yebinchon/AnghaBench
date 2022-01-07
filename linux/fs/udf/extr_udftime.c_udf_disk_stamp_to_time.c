
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u16 ;
struct timestamp {int centiseconds; int hundredsOfMicroseconds; int microseconds; int second; int minute; int hour; int day; int month; int year; int typeAndTimezone; } ;
struct timespec64 {int tv_sec; int tv_nsec; } ;
typedef int int16_t ;


 int NSEC_PER_SEC ;
 int le16_to_cpu (int ) ;
 int mktime64 (int,int ,int ,int ,int ,int ) ;

void
udf_disk_stamp_to_time(struct timespec64 *dest, struct timestamp src)
{
 u16 typeAndTimezone = le16_to_cpu(src.typeAndTimezone);
 u16 year = le16_to_cpu(src.year);
 uint8_t type = typeAndTimezone >> 12;
 int16_t offset;

 if (type == 1) {
  offset = typeAndTimezone << 4;

  offset = (offset >> 4);
  if (offset == -2047)
   offset = 0;
 } else
  offset = 0;

 dest->tv_sec = mktime64(year, src.month, src.day, src.hour, src.minute,
   src.second);
 dest->tv_sec -= offset * 60;
 dest->tv_nsec = 1000 * (src.centiseconds * 10000 +
   src.hundredsOfMicroseconds * 100 + src.microseconds);




 dest->tv_nsec %= NSEC_PER_SEC;
}
