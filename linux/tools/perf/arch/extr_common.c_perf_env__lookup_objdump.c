
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_env {int * arch; } ;


 int perf_env__lookup_binutils_path (struct perf_env*,char*,char const**) ;

int perf_env__lookup_objdump(struct perf_env *env, const char **path)
{




 if (env->arch == ((void*)0))
  return 0;

 return perf_env__lookup_binutils_path(env, "objdump", path);
}
