
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct thread_stack {int cnt; int kernel_start; TYPE_1__* stack; TYPE_2__* crp; } ;
struct perf_sample {int time; scalar_t__ insn_len; scalar_t__ ip; } ;
struct call_path_root {int dummy; } ;
struct call_path {int dummy; } ;
struct TYPE_4__ {struct call_path_root* cpr; } ;
struct TYPE_3__ {int cp; scalar_t__ ref; } ;


 struct call_path* call_path__findnew (struct call_path_root*,int ,int *,int ,int ) ;
 int thread_stack__push_cp (struct thread_stack*,scalar_t__,int ,scalar_t__,struct call_path*,int,int) ;

__attribute__((used)) static int thread_stack__trace_end(struct thread_stack *ts,
       struct perf_sample *sample, u64 ref)
{
 struct call_path_root *cpr = ts->crp->cpr;
 struct call_path *cp;
 u64 ret_addr;


 if (!ts->cnt || (ts->cnt == 1 && ts->stack[0].ref == ref))
  return 0;

 cp = call_path__findnew(cpr, ts->stack[ts->cnt - 1].cp, ((void*)0), 0,
    ts->kernel_start);

 ret_addr = sample->ip + sample->insn_len;

 return thread_stack__push_cp(ts, ret_addr, sample->time, ref, cp,
         0, 1);
}
