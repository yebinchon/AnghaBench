
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct pt_regs {int dummy; } ;



__attribute__((used)) static inline void ftrace_trace_stack(struct trace_array *tr,
          struct ring_buffer *buffer,
          unsigned long flags,
          int skip, int pc, struct pt_regs *regs)
{
}
