
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct thread {int pid_; } ;
struct intel_bts_queue {int done; int pid; size_t queue_nr; TYPE_4__* bts; struct auxtrace_buffer* buffer; int cpu; int tid; } ;
struct auxtrace_queue {int dummy; } ;
struct auxtrace_buffer {int reference; scalar_t__ buffer_nr; scalar_t__ consecutive; int data; } ;
struct TYPE_7__ {int thread_stack; int callchain; } ;
struct TYPE_5__ {struct auxtrace_queue* queue_array; } ;
struct TYPE_8__ {scalar_t__ sampling_mode; scalar_t__ snapshot_mode; TYPE_3__ synth_opts; TYPE_2__* session; TYPE_1__ queues; int machine; } ;
struct TYPE_6__ {int data; } ;


 int EINVAL ;
 int ENOMEM ;
 int auxtrace_buffer__drop_data (struct auxtrace_buffer*) ;
 int auxtrace_buffer__get_data (struct auxtrace_buffer*,int) ;
 void* auxtrace_buffer__next (struct auxtrace_queue*,struct auxtrace_buffer*) ;
 scalar_t__ intel_bts_do_fix_overlap (struct auxtrace_queue*,struct auxtrace_buffer*) ;
 int intel_bts_process_buffer (struct intel_bts_queue*,struct auxtrace_buffer*,struct thread*) ;
 struct thread* machine__find_thread (int ,int,int ) ;
 struct thread* machine__findnew_thread (int ,int,int ) ;
 int perf_data__fd (int ) ;
 int thread__put (struct thread*) ;
 int thread_stack__set_trace_nr (struct thread*,int ,scalar_t__) ;

__attribute__((used)) static int intel_bts_process_queue(struct intel_bts_queue *btsq, u64 *timestamp)
{
 struct auxtrace_buffer *buffer = btsq->buffer, *old_buffer = buffer;
 struct auxtrace_queue *queue;
 struct thread *thread;
 int err;

 if (btsq->done)
  return 1;

 if (btsq->pid == -1) {
  thread = machine__find_thread(btsq->bts->machine, -1,
           btsq->tid);
  if (thread)
   btsq->pid = thread->pid_;
 } else {
  thread = machine__findnew_thread(btsq->bts->machine, btsq->pid,
       btsq->tid);
 }

 queue = &btsq->bts->queues.queue_array[btsq->queue_nr];

 if (!buffer)
  buffer = auxtrace_buffer__next(queue, ((void*)0));

 if (!buffer) {
  if (!btsq->bts->sampling_mode)
   btsq->done = 1;
  err = 1;
  goto out_put;
 }


 if (buffer->consecutive) {
  err = -EINVAL;
  goto out_put;
 }

 if (!buffer->data) {
  int fd = perf_data__fd(btsq->bts->session->data);

  buffer->data = auxtrace_buffer__get_data(buffer, fd);
  if (!buffer->data) {
   err = -ENOMEM;
   goto out_put;
  }
 }

 if (btsq->bts->snapshot_mode && !buffer->consecutive &&
     intel_bts_do_fix_overlap(queue, buffer)) {
  err = -ENOMEM;
  goto out_put;
 }

 if (!btsq->bts->synth_opts.callchain &&
     !btsq->bts->synth_opts.thread_stack && thread &&
     (!old_buffer || btsq->bts->sampling_mode ||
      (btsq->bts->snapshot_mode && !buffer->consecutive)))
  thread_stack__set_trace_nr(thread, btsq->cpu, buffer->buffer_nr + 1);

 err = intel_bts_process_buffer(btsq, buffer, thread);

 auxtrace_buffer__drop_data(buffer);

 btsq->buffer = auxtrace_buffer__next(queue, buffer);
 if (btsq->buffer) {
  if (timestamp)
   *timestamp = btsq->buffer->reference;
 } else {
  if (!btsq->bts->sampling_mode)
   btsq->done = 1;
 }
out_put:
 thread__put(thread);
 return err;
}
