
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {char* machine; } ;
struct perf_env {char* arch; } ;


 char const* normalize_arch (char*) ;
 scalar_t__ uname (struct utsname*) ;

const char *perf_env__arch(struct perf_env *env)
{
 struct utsname uts;
 char *arch_name;

 if (!env || !env->arch) {
  if (uname(&uts) < 0)
   return ((void*)0);
  arch_name = uts.machine;
 } else
  arch_name = env->arch;

 return normalize_arch(arch_name);
}
