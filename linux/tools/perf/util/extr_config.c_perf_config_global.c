
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perf_env_bool (char*,int ) ;

__attribute__((used)) static int perf_config_global(void)
{
 return !perf_env_bool("PERF_CONFIG_NOGLOBAL", 0);
}
