
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct thread_stack {int rstate; int cnt; int branch_count; TYPE_2__* stack; int kernel_start; TYPE_1__* crp; int last_time; int cyc_count; int insn_count; struct comm* comm; } ;
struct thread {scalar_t__ pid_; scalar_t__ tid; } ;
struct perf_sample {int flags; scalar_t__ ip; scalar_t__ addr; scalar_t__ insn_len; int time; scalar_t__ cyc_cnt; scalar_t__ insn_cnt; int cpu; } ;
struct comm {int dummy; } ;
struct call_return_processor {int dummy; } ;
struct call_path_root {int dummy; } ;
struct call_path {int dummy; } ;
struct addr_location {scalar_t__ addr; TYPE_3__* sym; } ;
typedef enum retpoline_state_t { ____Placeholder_retpoline_state_t } retpoline_state_t ;
struct TYPE_7__ {scalar_t__ start; } ;
struct TYPE_6__ {scalar_t__ ret_addr; int non_call; int cp; } ;
struct TYPE_5__ {struct call_path_root* cpr; } ;


 int ENOMEM ;
 int PERF_IP_FLAG_BRANCH ;
 int PERF_IP_FLAG_CALL ;
 int PERF_IP_FLAG_INTERRUPT ;
 int PERF_IP_FLAG_RETURN ;
 int PERF_IP_FLAG_SYSCALLRET ;
 int PERF_IP_FLAG_TRACE_BEGIN ;
 int PERF_IP_FLAG_TRACE_END ;
 int X86_RETPOLINE_DETECTED ;
 int X86_RETPOLINE_POSSIBLE ;
 int __thread_stack__flush (struct thread*,struct thread_stack*) ;
 struct call_path* call_path__findnew (struct call_path_root*,int ,TYPE_3__*,scalar_t__,int ) ;
 struct thread_stack* thread__stack (struct thread*,int ) ;
 int thread_stack__bottom (struct thread_stack*,struct perf_sample*,struct addr_location*,struct addr_location*,scalar_t__) ;
 struct thread_stack* thread_stack__new (struct thread*,int ,struct call_return_processor*) ;
 int thread_stack__no_call_return (struct thread*,struct thread_stack*,struct perf_sample*,struct addr_location*,struct addr_location*,scalar_t__) ;
 int thread_stack__pop_cp (struct thread*,struct thread_stack*,scalar_t__,int ,scalar_t__,TYPE_3__*) ;
 int thread_stack__pop_ks (struct thread*,struct thread_stack*,struct perf_sample*,scalar_t__) ;
 int thread_stack__push_cp (struct thread_stack*,scalar_t__,int ,scalar_t__,struct call_path*,int,int) ;
 int thread_stack__reset (struct thread*,struct thread_stack*) ;
 int thread_stack__trace_begin (struct thread*,struct thread_stack*,int ,scalar_t__) ;
 int thread_stack__trace_end (struct thread_stack*,struct perf_sample*,scalar_t__) ;
 int thread_stack__x86_retpoline (struct thread_stack*,struct perf_sample*,struct addr_location*) ;

int thread_stack__process(struct thread *thread, struct comm *comm,
     struct perf_sample *sample,
     struct addr_location *from_al,
     struct addr_location *to_al, u64 ref,
     struct call_return_processor *crp)
{
 struct thread_stack *ts = thread__stack(thread, sample->cpu);
 enum retpoline_state_t rstate;
 int err = 0;

 if (ts && !ts->crp) {

  thread_stack__reset(thread, ts);
  ts = ((void*)0);
 }

 if (!ts) {
  ts = thread_stack__new(thread, sample->cpu, crp);
  if (!ts)
   return -ENOMEM;
  ts->comm = comm;
 }

 rstate = ts->rstate;
 if (rstate == X86_RETPOLINE_DETECTED)
  ts->rstate = X86_RETPOLINE_POSSIBLE;


 if (ts->comm != comm && thread->pid_ == thread->tid) {
  err = __thread_stack__flush(thread, ts);
  if (err)
   return err;
  ts->comm = comm;
 }


 if (!ts->cnt) {
  err = thread_stack__bottom(ts, sample, from_al, to_al, ref);
  if (err)
   return err;
 }

 ts->branch_count += 1;
 ts->insn_count += sample->insn_cnt;
 ts->cyc_count += sample->cyc_cnt;
 ts->last_time = sample->time;

 if (sample->flags & PERF_IP_FLAG_CALL) {
  bool trace_end = sample->flags & PERF_IP_FLAG_TRACE_END;
  struct call_path_root *cpr = ts->crp->cpr;
  struct call_path *cp;
  u64 ret_addr;

  if (!sample->ip || !sample->addr)
   return 0;

  ret_addr = sample->ip + sample->insn_len;
  if (ret_addr == sample->addr)
   return 0;

  cp = call_path__findnew(cpr, ts->stack[ts->cnt - 1].cp,
     to_al->sym, sample->addr,
     ts->kernel_start);
  err = thread_stack__push_cp(ts, ret_addr, sample->time, ref,
         cp, 0, trace_end);





  if (!err && rstate == X86_RETPOLINE_POSSIBLE && to_al->sym &&
      from_al->sym == to_al->sym &&
      to_al->addr != to_al->sym->start)
   ts->rstate = X86_RETPOLINE_DETECTED;

 } else if (sample->flags & PERF_IP_FLAG_RETURN) {
  if (!sample->addr) {
   u32 return_from_kernel = PERF_IP_FLAG_SYSCALLRET |
       PERF_IP_FLAG_INTERRUPT;

   if (!(sample->flags & return_from_kernel))
    return 0;


   return thread_stack__pop_ks(thread, ts, sample, ref);
  }

  if (!sample->ip)
   return 0;


  if (rstate == X86_RETPOLINE_DETECTED && ts->cnt > 2 &&
      ts->stack[ts->cnt - 1].ret_addr != sample->addr)
   return thread_stack__x86_retpoline(ts, sample, to_al);

  err = thread_stack__pop_cp(thread, ts, sample->addr,
        sample->time, ref, from_al->sym);
  if (err) {
   if (err < 0)
    return err;
   err = thread_stack__no_call_return(thread, ts, sample,
          from_al, to_al, ref);
  }
 } else if (sample->flags & PERF_IP_FLAG_TRACE_BEGIN) {
  err = thread_stack__trace_begin(thread, ts, sample->time, ref);
 } else if (sample->flags & PERF_IP_FLAG_TRACE_END) {
  err = thread_stack__trace_end(ts, sample, ref);
 } else if (sample->flags & PERF_IP_FLAG_BRANCH &&
     from_al->sym != to_al->sym && to_al->sym &&
     to_al->addr == to_al->sym->start) {
  struct call_path_root *cpr = ts->crp->cpr;
  struct call_path *cp;







  cp = call_path__findnew(cpr, ts->stack[ts->cnt - 1].cp,
     to_al->sym, sample->addr,
     ts->kernel_start);
  err = thread_stack__push_cp(ts, 0, sample->time, ref, cp, 0,
         0);
  if (!err)
   ts->stack[ts->cnt - 1].non_call = 1;
 }

 return err;
}
