
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef int dt ;


 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int localtime_r (int *,struct tm*) ;
 int scnprintf (char*,size_t,char*,char*,unsigned int) ;
 int strftime (char*,int,char*,struct tm*) ;

int fetch_current_timestamp(char *buf, size_t sz)
{
 struct timeval tv;
 struct tm tm;
 char dt[32];

 if (gettimeofday(&tv, ((void*)0)) || !localtime_r(&tv.tv_sec, &tm))
  return -1;

 if (!strftime(dt, sizeof(dt), "%Y%m%d%H%M%S", &tm))
  return -1;

 scnprintf(buf, sz, "%s%02u", dt, (unsigned)tv.tv_usec / 10000);

 return 0;
}
