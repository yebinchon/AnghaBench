
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;


 int trace_buffer_unlock_commit_regs (struct trace_array*,struct ring_buffer*,struct ring_buffer_event*,unsigned long,int,int *) ;

__attribute__((used)) static inline void trace_buffer_unlock_commit(struct trace_array *tr,
           struct ring_buffer *buffer,
           struct ring_buffer_event *event,
           unsigned long flags, int pc)
{
 trace_buffer_unlock_commit_regs(tr, buffer, event, flags, pc, ((void*)0));
}
