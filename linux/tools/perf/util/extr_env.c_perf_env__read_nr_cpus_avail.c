
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_env {scalar_t__ nr_cpus_avail; } ;


 int ENOENT ;
 scalar_t__ cpu__max_present_cpu () ;

__attribute__((used)) static int perf_env__read_nr_cpus_avail(struct perf_env *env)
{
 if (env->nr_cpus_avail == 0)
  env->nr_cpus_avail = cpu__max_present_cpu();

 return env->nr_cpus_avail ? 0 : -ENOENT;
}
