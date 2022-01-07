
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_env {int nr_cpus_avail; } ;


 int perf_env__read_nr_cpus_avail (struct perf_env*) ;

int perf_env__nr_cpus_avail(struct perf_env *env)
{
 return env && !perf_env__read_nr_cpus_avail(env) ? env->nr_cpus_avail : 0;
}
