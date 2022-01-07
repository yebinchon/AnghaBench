
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {char* root_dir; } ;
struct dso {int has_build_id; int build_id; } ;


 int PATH_MAX ;
 scalar_t__ machine__is_default_guest (struct machine*) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ sysfs__read_build_id (char*,int ,int) ;

void dso__read_running_kernel_build_id(struct dso *dso, struct machine *machine)
{
 char path[PATH_MAX];

 if (machine__is_default_guest(machine))
  return;
 sprintf(path, "%s/sys/kernel/notes", machine->root_dir);
 if (sysfs__read_build_id(path, dso->build_id,
     sizeof(dso->build_id)) == 0)
  dso->has_build_id = 1;
}
