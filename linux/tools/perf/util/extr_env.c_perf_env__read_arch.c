
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int machine; } ;
struct perf_env {int arch; } ;


 int ENOMEM ;
 int strdup (int ) ;
 int uname (struct utsname*) ;

__attribute__((used)) static int perf_env__read_arch(struct perf_env *env)
{
 struct utsname uts;

 if (env->arch)
  return 0;

 if (!uname(&uts))
  env->arch = strdup(uts.machine);

 return env->arch ? 0 : -ENOMEM;
}
