
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct thread_stack_entry {void* db_id; scalar_t__ non_call; scalar_t__ no_call; int ref; scalar_t__ cyc_count; scalar_t__ insn_count; scalar_t__ branch_count; int timestamp; int cp; } ;
struct thread_stack {scalar_t__ cyc_count; scalar_t__ insn_count; scalar_t__ branch_count; struct thread_stack_entry* stack; int comm; struct call_return_processor* crp; } ;
struct thread {int dummy; } ;
struct call_return_processor {int (* process ) (struct call_return*,void**,int ) ;int data; } ;
struct call_return {void* db_id; int flags; void* return_ref; int call_ref; scalar_t__ cyc_count; scalar_t__ insn_count; scalar_t__ branch_count; void* return_time; int call_time; int cp; int comm; struct thread* thread; } ;


 int CALL_RETURN_NON_CALL ;
 int CALL_RETURN_NO_CALL ;
 int CALL_RETURN_NO_RETURN ;
 int stub1 (struct call_return*,void**,int ) ;

__attribute__((used)) static int thread_stack__call_return(struct thread *thread,
         struct thread_stack *ts, size_t idx,
         u64 timestamp, u64 ref, bool no_return)
{
 struct call_return_processor *crp = ts->crp;
 struct thread_stack_entry *tse;
 struct call_return cr = {
  .thread = thread,
  .comm = ts->comm,
  .db_id = 0,
 };
 u64 *parent_db_id;

 tse = &ts->stack[idx];
 cr.cp = tse->cp;
 cr.call_time = tse->timestamp;
 cr.return_time = timestamp;
 cr.branch_count = ts->branch_count - tse->branch_count;
 cr.insn_count = ts->insn_count - tse->insn_count;
 cr.cyc_count = ts->cyc_count - tse->cyc_count;
 cr.db_id = tse->db_id;
 cr.call_ref = tse->ref;
 cr.return_ref = ref;
 if (tse->no_call)
  cr.flags |= CALL_RETURN_NO_CALL;
 if (no_return)
  cr.flags |= CALL_RETURN_NO_RETURN;
 if (tse->non_call)
  cr.flags |= CALL_RETURN_NON_CALL;






 parent_db_id = idx ? &(tse - 1)->db_id : ((void*)0);

 return crp->process(&cr, parent_db_id, crp->data);
}
