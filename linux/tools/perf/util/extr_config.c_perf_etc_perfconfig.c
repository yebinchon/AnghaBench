
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETC_PERFCONFIG ;
 char* system_path (int ) ;

const char *perf_etc_perfconfig(void)
{
 static const char *system_wide;
 if (!system_wide)
  system_wide = system_path(ETC_PERFCONFIG);
 return system_wide;
}
