
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static bool valid_only_metric(const char *unit)
{
 if (!unit)
  return 0;
 if (strstr(unit, "/sec") ||
     strstr(unit, "hz") ||
     strstr(unit, "Hz") ||
     strstr(unit, "CPUs utilized"))
  return 0;
 return 1;
}
