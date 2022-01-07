
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct machine {char* mmap_name; } ;
struct dso {int has_build_id; } ;
struct TYPE_2__ {char* vmlinux_name; char* default_guest_vmlinux_name; } ;


 int DSO_TYPE_GUEST_KERNEL ;
 int DSO_TYPE_KERNEL ;
 int dso__read_running_kernel_build_id (struct dso*,struct machine*) ;
 struct dso* machine__findnew_kernel (struct machine*,char const*,char*,int ) ;
 scalar_t__ machine__is_host (struct machine*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static struct dso *machine__get_kernel(struct machine *machine)
{
 const char *vmlinux_name = machine->mmap_name;
 struct dso *kernel;

 if (machine__is_host(machine)) {
  if (symbol_conf.vmlinux_name)
   vmlinux_name = symbol_conf.vmlinux_name;

  kernel = machine__findnew_kernel(machine, vmlinux_name,
       "[kernel]", DSO_TYPE_KERNEL);
 } else {
  if (symbol_conf.default_guest_vmlinux_name)
   vmlinux_name = symbol_conf.default_guest_vmlinux_name;

  kernel = machine__findnew_kernel(machine, vmlinux_name,
       "[guest.kernel]",
       DSO_TYPE_GUEST_KERNEL);
 }

 if (kernel != ((void*)0) && (!kernel->has_build_id))
  dso__read_running_kernel_build_id(kernel, machine);

 return kernel;
}
