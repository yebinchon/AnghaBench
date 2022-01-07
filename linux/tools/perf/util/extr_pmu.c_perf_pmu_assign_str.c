
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_debug (char*,char*,char const*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int zfree (char**) ;

__attribute__((used)) static void perf_pmu_assign_str(char *name, const char *field, char **old_str,
    char **new_str)
{
 if (!*old_str)
  goto set_new;

 if (*new_str) {
  if (strcasecmp(*old_str, *new_str))
   pr_debug("alias %s differs in field '%s'\n",
     name, field);
  zfree(old_str);
 } else
  return;
set_new:
 *old_str = *new_str;
 *new_str = ((void*)0);
}
