
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_queue {struct auxtrace_buffer* old_buffer; struct auxtrace_buffer* buffer; } ;
struct auxtrace_buffer {int dummy; } ;


 int auxtrace_buffer__drop_data (struct auxtrace_buffer*) ;

__attribute__((used)) static void intel_pt_lookahead_drop_buffer(struct intel_pt_queue *ptq,
        struct auxtrace_buffer *buffer)
{
 if (!buffer || buffer == ptq->buffer || buffer == ptq->old_buffer)
  return;

 auxtrace_buffer__drop_data(buffer);
}
