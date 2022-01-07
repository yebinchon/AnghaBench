
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int intel_pt_enable_logging ;

void intel_pt_log_enable(void)
{
 intel_pt_enable_logging = 1;
}
