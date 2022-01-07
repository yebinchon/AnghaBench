
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * config_set ;
 int perf_config_set__delete (int *) ;

void perf_config__exit(void)
{
 perf_config_set__delete(config_set);
 config_set = ((void*)0);
}
