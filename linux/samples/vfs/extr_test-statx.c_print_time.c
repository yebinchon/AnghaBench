
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
struct statx_timestamp {int tv_nsec; int tv_sec; } ;


 int exit (int) ;
 int fwrite (char*,int,int,int ) ;
 int localtime_r (int *,struct tm*) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int stdout ;
 int strftime (char*,int,char*,struct tm*) ;

__attribute__((used)) static void print_time(const char *field, struct statx_timestamp *ts)
{
 struct tm tm;
 time_t tim;
 char buffer[100];
 int len;

 tim = ts->tv_sec;
 if (!localtime_r(&tim, &tm)) {
  perror("localtime_r");
  exit(1);
 }
 len = strftime(buffer, 100, "%F %T", &tm);
 if (len == 0) {
  perror("strftime");
  exit(1);
 }
 printf("%s", field);
 fwrite(buffer, 1, len, stdout);
 printf(".%09u", ts->tv_nsec);
 len = strftime(buffer, 100, "%z", &tm);
 if (len == 0) {
  perror("strftime2");
  exit(1);
 }
 fwrite(buffer, 1, len, stdout);
 printf("\n");
}
