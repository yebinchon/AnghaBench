
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long INT_MAX ;
 int strcmp (char const*,char*) ;
 long strtol (char const*,int *,int ) ;

__attribute__((used)) static int intel_pt_config_div(const char *var, const char *value, void *data)
{
 int *d = data;
 long val;

 if (!strcmp(var, "intel-pt.cache-divisor")) {
  val = strtol(value, ((void*)0), 0);
  if (val > 0 && val <= INT_MAX)
   *d = val;
 }

 return 0;
}
