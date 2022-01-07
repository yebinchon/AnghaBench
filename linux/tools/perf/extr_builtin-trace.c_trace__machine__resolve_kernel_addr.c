
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct machine {int kptr_restrict_warned; } ;
struct TYPE_2__ {scalar_t__ kptr_restrict; } ;


 char* machine__resolve_kernel_addr (void*,unsigned long long*,char**) ;
 int pr_warning (char*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static char *trace__machine__resolve_kernel_addr(void *vmachine, unsigned long long *addrp, char **modp)
{
 struct machine *machine = vmachine;

 if (machine->kptr_restrict_warned)
  return ((void*)0);

 if (symbol_conf.kptr_restrict) {
  pr_warning("Kernel address maps (/proc/{kallsyms,modules}) are restricted.\n\n"
      "Check /proc/sys/kernel/kptr_restrict and /proc/sys/kernel/perf_event_paranoid.\n\n"
      "Kernel samples will not be resolved.\n");
  machine->kptr_restrict_warned = 1;
  return ((void*)0);
 }

 return machine__resolve_kernel_addr(vmachine, addrp, modp);
}
