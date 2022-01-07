
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_stack_entry {struct call_path* cp; } ;
struct thread_stack {int cnt; struct thread_stack_entry* stack; int kernel_start; TYPE_1__* crp; } ;
struct symbol {scalar_t__ start; int name; } ;
struct perf_sample {int addr; } ;
struct call_path_root {int dummy; } ;
struct call_path {struct symbol* sym; } ;
struct addr_location {scalar_t__ addr; struct symbol* sym; } ;
struct TYPE_2__ {struct call_path_root* cpr; } ;


 int ENOMEM ;
 struct call_path* call_path__findnew (struct call_path_root*,struct call_path*,struct symbol*,int ,int ) ;
 scalar_t__ is_x86_retpoline (int ) ;

__attribute__((used)) static int thread_stack__x86_retpoline(struct thread_stack *ts,
           struct perf_sample *sample,
           struct addr_location *to_al)
{
 struct thread_stack_entry *tse = &ts->stack[ts->cnt - 1];
 struct call_path_root *cpr = ts->crp->cpr;
 struct symbol *sym = tse->cp->sym;
 struct symbol *tsym = to_al->sym;
 struct call_path *cp;

 if (sym && is_x86_retpoline(sym->name)) {
  ts->cnt -= 1;
  sym = ts->stack[ts->cnt - 2].cp->sym;
  if (sym && sym == tsym && to_al->addr != tsym->start) {





   ts->cnt -= 1;
   return 0;
  }
 } else if (sym && sym == tsym) {




  ts->cnt -= 1;
  return 0;
 }

 cp = call_path__findnew(cpr, ts->stack[ts->cnt - 2].cp, tsym,
    sample->addr, ts->kernel_start);
 if (!cp)
  return -ENOMEM;


 ts->stack[ts->cnt - 1].cp = cp;

 return 0;
}
