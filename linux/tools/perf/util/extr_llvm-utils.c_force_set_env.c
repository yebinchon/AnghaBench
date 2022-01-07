
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_debug (char*,char const*,...) ;
 int setenv (char const*,char const*,int) ;
 int unsetenv (char const*) ;

__attribute__((used)) static inline void
force_set_env(const char *var, const char *value)
{
 if (value) {
  setenv(var, value, 1);
  pr_debug("set env: %s=%s\n", var, value);
 } else {
  unsetenv(var);
  pr_debug("unset env: %s\n", var);
 }
}
