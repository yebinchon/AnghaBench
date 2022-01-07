
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_err (char*,char const*) ;

int config_error_nonbool(const char *var)
{
 pr_err("Missing value for '%s'", var);
 return -1;
}
