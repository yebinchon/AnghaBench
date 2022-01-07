
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int readlink (char*,char*,int) ;
 char* strcpy (char*,char*) ;

char *perf_exe(char *buf, int len)
{
 int n = readlink("/proc/self/exe", buf, len);
 if (n > 0) {
  buf[n] = 0;
  return buf;
 }
 return strcpy(buf, "perf");
}
