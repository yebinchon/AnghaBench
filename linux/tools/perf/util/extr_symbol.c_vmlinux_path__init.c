
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct utsname {char* release; } ;
struct perf_env {char* os_release; } ;
typedef int bf ;
struct TYPE_2__ {scalar_t__* symfs; } ;


 unsigned int ARRAY_SIZE (char**) ;
 int PATH_MAX ;
 int * malloc (int) ;
 int snprintf (char*,int,char*,char*) ;
 TYPE_1__ symbol_conf ;
 scalar_t__ uname (struct utsname*) ;
 int * vmlinux_path ;
 scalar_t__ vmlinux_path__add (char*) ;
 int vmlinux_path__exit () ;
 char** vmlinux_paths ;
 char** vmlinux_paths_upd ;

__attribute__((used)) static int vmlinux_path__init(struct perf_env *env)
{
 struct utsname uts;
 char bf[PATH_MAX];
 char *kernel_version;
 unsigned int i;

 vmlinux_path = malloc(sizeof(char *) * (ARRAY_SIZE(vmlinux_paths) +
         ARRAY_SIZE(vmlinux_paths_upd)));
 if (vmlinux_path == ((void*)0))
  return -1;

 for (i = 0; i < ARRAY_SIZE(vmlinux_paths); i++)
  if (vmlinux_path__add(vmlinux_paths[i]) < 0)
   goto out_fail;


 if (symbol_conf.symfs[0] != 0)
  return 0;

 if (env) {
  kernel_version = env->os_release;
 } else {
  if (uname(&uts) < 0)
   goto out_fail;

  kernel_version = uts.release;
 }

 for (i = 0; i < ARRAY_SIZE(vmlinux_paths_upd); i++) {
  snprintf(bf, sizeof(bf), vmlinux_paths_upd[i], kernel_version);
  if (vmlinux_path__add(bf) < 0)
   goto out_fail;
 }

 return 0;

out_fail:
 vmlinux_path__exit();
 return -1;
}
