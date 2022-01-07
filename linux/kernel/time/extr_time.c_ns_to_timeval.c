
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suseconds_t ;
struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;
typedef int s64 ;


 struct timespec ns_to_timespec (int const) ;

struct timeval ns_to_timeval(const s64 nsec)
{
 struct timespec ts = ns_to_timespec(nsec);
 struct timeval tv;

 tv.tv_sec = ts.tv_sec;
 tv.tv_usec = (suseconds_t) ts.tv_nsec / 1000;

 return tv;
}
