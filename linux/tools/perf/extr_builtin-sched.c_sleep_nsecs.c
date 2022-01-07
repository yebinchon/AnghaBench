
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec {int tv_nsec; int tv_sec; } ;


 int nanosleep (struct timespec*,int *) ;

__attribute__((used)) static void sleep_nsecs(u64 nsecs)
{
 struct timespec ts;

 ts.tv_nsec = nsecs % 999999999;
 ts.tv_sec = nsecs / 999999999;

 nanosleep(&ts, ((void*)0));
}
