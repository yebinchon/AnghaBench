
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static inline void twl4030_wait_ms(int time)
{
 if (time < 60) {
  time *= 1000;
  usleep_range(time, time + 500);
 } else {
  msleep(time);
 }
}
