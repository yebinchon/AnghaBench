
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * config_set ;
 int * perf_config_set__new () ;

__attribute__((used)) static int perf_config__init(void)
{
 if (config_set == ((void*)0))
  config_set = perf_config_set__new();

 return config_set == ((void*)0);
}
