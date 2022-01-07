
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct warn_args {int args; int fmt; } ;
struct pt_regs {int dummy; } ;
struct TYPE_3__ {int pid; } ;


 int LOCKDEP_STILL_OK ;
 int add_taint (unsigned int,int ) ;
 TYPE_1__* current ;
 int disable_trace_on_warning () ;
 int dump_stack () ;
 int panic (char*) ;
 scalar_t__ panic_on_warn ;
 int pr_warn (char*,int ,int ,void*,...) ;
 int print_irqtrace_events (TYPE_1__*) ;
 int print_modules () ;
 int print_oops_end_marker () ;
 int raw_smp_processor_id () ;
 int show_regs (struct pt_regs*) ;
 int vprintk (int ,int ) ;

void __warn(const char *file, int line, void *caller, unsigned taint,
     struct pt_regs *regs, struct warn_args *args)
{
 disable_trace_on_warning();

 if (file)
  pr_warn("WARNING: CPU: %d PID: %d at %s:%d %pS\n",
   raw_smp_processor_id(), current->pid, file, line,
   caller);
 else
  pr_warn("WARNING: CPU: %d PID: %d at %pS\n",
   raw_smp_processor_id(), current->pid, caller);

 if (args)
  vprintk(args->fmt, args->args);

 if (panic_on_warn) {






  panic_on_warn = 0;
  panic("panic_on_warn set ...\n");
 }

 print_modules();

 if (regs)
  show_regs(regs);
 else
  dump_stack();

 print_irqtrace_events(current);

 print_oops_end_marker();


 add_taint(taint, LOCKDEP_STILL_OK);
}
