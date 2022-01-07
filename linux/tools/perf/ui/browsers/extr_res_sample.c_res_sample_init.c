
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perf_config (int ,int *) ;
 int res_sample_config ;

void res_sample_init(void)
{
 perf_config(res_sample_config, ((void*)0));
}
