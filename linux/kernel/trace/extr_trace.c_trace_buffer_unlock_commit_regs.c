
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct pt_regs {int dummy; } ;


 int STACK_SKIP ;
 int __buffer_unlock_commit (struct ring_buffer*,struct ring_buffer_event*) ;
 int ftrace_trace_stack (struct trace_array*,struct ring_buffer*,unsigned long,int ,int,struct pt_regs*) ;
 int ftrace_trace_userstack (struct ring_buffer*,unsigned long,int) ;

void trace_buffer_unlock_commit_regs(struct trace_array *tr,
         struct ring_buffer *buffer,
         struct ring_buffer_event *event,
         unsigned long flags, int pc,
         struct pt_regs *regs)
{
 __buffer_unlock_commit(buffer, event);







 ftrace_trace_stack(tr, buffer, flags, regs ? 0 : STACK_SKIP, pc, regs);
 ftrace_trace_userstack(buffer, flags, pc);
}
