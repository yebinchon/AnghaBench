
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int localtime (int *) ;
 int memset (char*,int ,int) ;
 scalar_t__ strftime (char*,int,char*,int ) ;
 int strncpy (char*,char*,int) ;
 int time (int *) ;

__attribute__((used)) static char *timestamp(char *timebuf, int buflen)
{
 time_t now;

 now = time(((void*)0));
 if (strftime(timebuf, buflen, "%T", localtime(&now)) == 0) {
  memset(timebuf, 0, buflen);
  strncpy(timebuf, "00:00:00", buflen-1);
 }

 return timebuf;
}
