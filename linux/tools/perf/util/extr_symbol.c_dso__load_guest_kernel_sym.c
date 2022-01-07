
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct map {TYPE_1__* groups; } ;
struct machine {char* root_dir; int mmap_name; } ;
struct dso {int binary_type; } ;
struct TYPE_4__ {char* default_guest_kallsyms; int * default_guest_vmlinux_name; } ;
struct TYPE_3__ {struct machine* machine; } ;


 int DSO_BINARY_TYPE__GUEST_KALLSYMS ;
 int PATH_MAX ;
 int dso__is_kcore (struct dso*) ;
 int dso__load_kallsyms (struct dso*,char const*,struct map*) ;
 int dso__load_vmlinux (struct dso*,struct map*,int *,int) ;
 int dso__set_long_name (struct dso*,int ,int) ;
 scalar_t__ machine__is_default_guest (struct machine*) ;
 int map__fixup_end (struct map*) ;
 int map__fixup_start (struct map*) ;
 int pr_debug (char*,...) ;
 int sprintf (char*,char*,char*) ;
 TYPE_2__ symbol_conf ;

__attribute__((used)) static int dso__load_guest_kernel_sym(struct dso *dso, struct map *map)
{
 int err;
 const char *kallsyms_filename = ((void*)0);
 struct machine *machine;
 char path[PATH_MAX];

 if (!map->groups) {
  pr_debug("Guest kernel map hasn't the point to groups\n");
  return -1;
 }
 machine = map->groups->machine;

 if (machine__is_default_guest(machine)) {





  if (symbol_conf.default_guest_vmlinux_name != ((void*)0)) {
   err = dso__load_vmlinux(dso, map,
      symbol_conf.default_guest_vmlinux_name,
      0);
   return err;
  }

  kallsyms_filename = symbol_conf.default_guest_kallsyms;
  if (!kallsyms_filename)
   return -1;
 } else {
  sprintf(path, "%s/proc/kallsyms", machine->root_dir);
  kallsyms_filename = path;
 }

 err = dso__load_kallsyms(dso, kallsyms_filename, map);
 if (err > 0)
  pr_debug("Using %s for symbols\n", kallsyms_filename);
 if (err > 0 && !dso__is_kcore(dso)) {
  dso->binary_type = DSO_BINARY_TYPE__GUEST_KALLSYMS;
  dso__set_long_name(dso, machine->mmap_name, 0);
  map__fixup_start(map);
  map__fixup_end(map);
 }

 return err;
}
