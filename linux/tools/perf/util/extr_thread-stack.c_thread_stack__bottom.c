
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct thread_stack {int kernel_start; TYPE_1__* crp; } ;
struct symbol {int dummy; } ;
struct perf_sample {int time; scalar_t__ addr; scalar_t__ ip; } ;
struct call_path_root {int call_path; } ;
struct call_path {int dummy; } ;
struct addr_location {struct symbol* sym; } ;
struct TYPE_2__ {struct call_path_root* cpr; } ;


 struct call_path* call_path__findnew (struct call_path_root*,int *,struct symbol*,scalar_t__,int ) ;
 int thread_stack__push_cp (struct thread_stack*,scalar_t__,int ,scalar_t__,struct call_path*,int,int) ;

__attribute__((used)) static int thread_stack__bottom(struct thread_stack *ts,
    struct perf_sample *sample,
    struct addr_location *from_al,
    struct addr_location *to_al, u64 ref)
{
 struct call_path_root *cpr = ts->crp->cpr;
 struct call_path *cp;
 struct symbol *sym;
 u64 ip;

 if (sample->ip) {
  ip = sample->ip;
  sym = from_al->sym;
 } else if (sample->addr) {
  ip = sample->addr;
  sym = to_al->sym;
 } else {
  return 0;
 }

 cp = call_path__findnew(cpr, &cpr->call_path, sym, ip,
    ts->kernel_start);

 return thread_stack__push_cp(ts, ip, sample->time, ref, cp,
         1, 0);
}
