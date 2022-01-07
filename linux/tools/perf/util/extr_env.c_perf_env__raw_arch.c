
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_env {char const* arch; } ;


 int perf_env__read_arch (struct perf_env*) ;

const char *perf_env__raw_arch(struct perf_env *env)
{
 return env && !perf_env__read_arch(env) ? env->arch : "unknown";
}
