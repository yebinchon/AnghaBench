
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt {int mispred_all; } ;


 int perf_config_bool (char const*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int intel_pt_perf_config(const char *var, const char *value, void *data)
{
 struct intel_pt *pt = data;

 if (!strcmp(var, "intel-pt.mispred-all"))
  pt->mispred_all = perf_config_bool(var, value);

 return 0;
}
