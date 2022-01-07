
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct map {int dummy; } ;
struct dso {int binary_type; } ;
struct TYPE_2__ {char* kallsyms_name; scalar_t__* symfs; int ignore_vmlinux; int * vmlinux_name; } ;


 int DSO_BINARY_TYPE__KALLSYMS ;
 int DSO__NAME_KALLSYMS ;
 char* dso__find_kallsyms (struct dso*,struct map*) ;
 int dso__is_kcore (struct dso*) ;
 int dso__load_kallsyms (struct dso*,char const*,struct map*) ;
 int dso__load_vmlinux (struct dso*,struct map*,int *,int) ;
 int dso__load_vmlinux_path (struct dso*,struct map*) ;
 int dso__set_long_name (struct dso*,int ,int) ;
 int free (char*) ;
 int map__fixup_end (struct map*) ;
 int map__fixup_start (struct map*) ;
 int pr_debug (char*,char const*) ;
 TYPE_1__ symbol_conf ;
 int * vmlinux_path ;

__attribute__((used)) static int dso__load_kernel_sym(struct dso *dso, struct map *map)
{
 int err;
 const char *kallsyms_filename = ((void*)0);
 char *kallsyms_allocated_filename = ((void*)0);
 if (symbol_conf.kallsyms_name != ((void*)0)) {
  kallsyms_filename = symbol_conf.kallsyms_name;
  goto do_kallsyms;
 }

 if (!symbol_conf.ignore_vmlinux && symbol_conf.vmlinux_name != ((void*)0)) {
  return dso__load_vmlinux(dso, map, symbol_conf.vmlinux_name, 0);
 }

 if (!symbol_conf.ignore_vmlinux && vmlinux_path != ((void*)0)) {
  err = dso__load_vmlinux_path(dso, map);
  if (err > 0)
   return err;
 }


 if (symbol_conf.symfs[0] != 0)
  return -1;

 kallsyms_allocated_filename = dso__find_kallsyms(dso, map);
 if (!kallsyms_allocated_filename)
  return -1;

 kallsyms_filename = kallsyms_allocated_filename;

do_kallsyms:
 err = dso__load_kallsyms(dso, kallsyms_filename, map);
 if (err > 0)
  pr_debug("Using %s for symbols\n", kallsyms_filename);
 free(kallsyms_allocated_filename);

 if (err > 0 && !dso__is_kcore(dso)) {
  dso->binary_type = DSO_BINARY_TYPE__KALLSYMS;
  dso__set_long_name(dso, DSO__NAME_KALLSYMS, 0);
  map__fixup_start(map);
  map__fixup_end(map);
 }

 return err;
}
