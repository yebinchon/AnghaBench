
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_tool {int dummy; } ;
struct machine {int pid; } ;


 int perf_event__synthesize_kernel_mmap (struct perf_tool*,int ,struct machine*) ;
 int perf_event__synthesize_modules (struct perf_tool*,int ,struct machine*) ;
 int pr_err (char*,int ) ;
 int process_synthesized_event ;

__attribute__((used)) static void perf_event__synthesize_guest_os(struct machine *machine, void *data)
{
 int err;
 struct perf_tool *tool = data;
 err = perf_event__synthesize_modules(tool, process_synthesized_event,
          machine);
 if (err < 0)
  pr_err("Couldn't record guest kernel [%d]'s reference"
         " relocation symbol.\n", machine->pid);





 err = perf_event__synthesize_kernel_mmap(tool, process_synthesized_event,
       machine);
 if (err < 0)
  pr_err("Couldn't record guest kernel [%d]'s reference"
         " relocation symbol.\n", machine->pid);
}
