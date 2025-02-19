
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symfs_vmlinux ;
struct symsrc {int dummy; } ;
struct map {int dummy; } ;
struct dso {scalar_t__ kernel; void* binary_type; } ;
typedef enum dso_binary_type { ____Placeholder_dso_binary_type } dso_binary_type ;


 void* DSO_BINARY_TYPE__GUEST_VMLINUX ;
 void* DSO_BINARY_TYPE__VMLINUX ;
 scalar_t__ DSO_TYPE_GUEST_KERNEL ;
 int PATH_MAX ;
 int dso__load_sym (struct dso*,struct map*,struct symsrc*,struct symsrc*,int ) ;
 int dso__set_loaded (struct dso*) ;
 int dso__set_long_name (struct dso*,char const*,int) ;
 int pr_debug (char*,char*) ;
 int snprintf (char*,int,char*,char const*) ;
 int symbol__join_symfs (char*,char const*) ;
 int symsrc__destroy (struct symsrc*) ;
 scalar_t__ symsrc__init (struct symsrc*,struct dso*,char*,int) ;

int dso__load_vmlinux(struct dso *dso, struct map *map,
        const char *vmlinux, bool vmlinux_allocated)
{
 int err = -1;
 struct symsrc ss;
 char symfs_vmlinux[PATH_MAX];
 enum dso_binary_type symtab_type;

 if (vmlinux[0] == '/')
  snprintf(symfs_vmlinux, sizeof(symfs_vmlinux), "%s", vmlinux);
 else
  symbol__join_symfs(symfs_vmlinux, vmlinux);

 if (dso->kernel == DSO_TYPE_GUEST_KERNEL)
  symtab_type = DSO_BINARY_TYPE__GUEST_VMLINUX;
 else
  symtab_type = DSO_BINARY_TYPE__VMLINUX;

 if (symsrc__init(&ss, dso, symfs_vmlinux, symtab_type))
  return -1;

 err = dso__load_sym(dso, map, &ss, &ss, 0);
 symsrc__destroy(&ss);

 if (err > 0) {
  if (dso->kernel == DSO_TYPE_GUEST_KERNEL)
   dso->binary_type = DSO_BINARY_TYPE__GUEST_VMLINUX;
  else
   dso->binary_type = DSO_BINARY_TYPE__VMLINUX;
  dso__set_long_name(dso, vmlinux, vmlinux_allocated);
  dso__set_loaded(dso);
  pr_debug("Using %s for symbols\n", symfs_vmlinux);
 }

 return err;
}
