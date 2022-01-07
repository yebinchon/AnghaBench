
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_config_set {int dummy; } ;


 int collect_config (char const*,char const*,struct perf_config_set*) ;
 char const* config_file_name ;

int perf_config_set__collect(struct perf_config_set *set, const char *file_name,
        const char *var, const char *value)
{
 config_file_name = file_name;
 return collect_config(var, value, set);
}
