
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ f ;
 int fflush (scalar_t__) ;
 int intel_pt_enable_logging ;

void intel_pt_log_disable(void)
{
 if (f)
  fflush(f);
 intel_pt_enable_logging = 0;
}
