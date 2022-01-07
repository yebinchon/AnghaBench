
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ f ;
 scalar_t__ fopen (int *,char*) ;
 int intel_pt_enable_logging ;
 int * log_name ;

__attribute__((used)) static int intel_pt_log_open(void)
{
 if (!intel_pt_enable_logging)
  return -1;

 if (f)
  return 0;

 if (!log_name[0])
  return -1;

 f = fopen(log_name, "w+");
 if (!f) {
  intel_pt_enable_logging = 0;
  return -1;
 }

 return 0;
}
