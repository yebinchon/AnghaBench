
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int time_t ;
struct xtm {unsigned int second; unsigned int minute; unsigned int hour; } ;


 unsigned int SECONDS_PER_DAY ;

__attribute__((used)) static inline unsigned int localtime_1(struct xtm *r, time_t time)
{
 unsigned int v, w;


 v = time % SECONDS_PER_DAY;
 r->second = v % 60;
 w = v / 60;
 r->minute = w % 60;
 r->hour = w / 60;
 return v;
}
