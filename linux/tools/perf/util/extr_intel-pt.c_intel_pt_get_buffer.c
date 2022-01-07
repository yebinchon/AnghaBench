
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_pt_queue {TYPE_2__* pt; } ;
struct intel_pt_buffer {int consecutive; scalar_t__ trace_nr; int ref_timestamp; scalar_t__ buf; int len; } ;
struct auxtrace_buffer {scalar_t__ buffer_nr; int consecutive; int reference; scalar_t__ data; int size; scalar_t__ use_data; int use_size; } ;
struct TYPE_4__ {scalar_t__ sampling_mode; scalar_t__ snapshot_mode; TYPE_1__* session; } ;
struct TYPE_3__ {int data; } ;


 int ENOMEM ;
 scalar_t__ auxtrace_buffer__get_data (struct auxtrace_buffer*,int) ;
 scalar_t__ intel_pt_do_fix_overlap (TYPE_2__*,struct auxtrace_buffer*,struct auxtrace_buffer*) ;
 int perf_data__fd (int ) ;

__attribute__((used)) static int intel_pt_get_buffer(struct intel_pt_queue *ptq,
          struct auxtrace_buffer *buffer,
          struct auxtrace_buffer *old_buffer,
          struct intel_pt_buffer *b)
{
 bool might_overlap;

 if (!buffer->data) {
  int fd = perf_data__fd(ptq->pt->session->data);

  buffer->data = auxtrace_buffer__get_data(buffer, fd);
  if (!buffer->data)
   return -ENOMEM;
 }

 might_overlap = ptq->pt->snapshot_mode || ptq->pt->sampling_mode;
 if (might_overlap && !buffer->consecutive && old_buffer &&
     intel_pt_do_fix_overlap(ptq->pt, old_buffer, buffer))
  return -ENOMEM;

 if (buffer->use_data) {
  b->len = buffer->use_size;
  b->buf = buffer->use_data;
 } else {
  b->len = buffer->size;
  b->buf = buffer->data;
 }
 b->ref_timestamp = buffer->reference;

 if (!old_buffer || (might_overlap && !buffer->consecutive)) {
  b->consecutive = 0;
  b->trace_nr = buffer->buffer_nr + 1;
 } else {
  b->consecutive = 1;
 }

 return 0;
}
