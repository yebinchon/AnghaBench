
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct cs_etm_traceid_queue {int pid; void* packet; void* prev_packet; void* last_branch; void* last_branch_rb; int event_buf; int trace_chan_id; int tid; int packet_queue; } ;
struct cs_etm_queue {size_t queue_nr; struct cs_etm_auxtrace* etm; } ;
struct cs_etm_packet {int dummy; } ;
struct TYPE_4__ {int last_branch_sz; scalar_t__ last_branch; } ;
struct TYPE_3__ {struct auxtrace_queue* queue_array; } ;
struct cs_etm_auxtrace {TYPE_2__ synth_opts; TYPE_1__ queues; } ;
struct branch_stack {int dummy; } ;
struct branch_entry {int dummy; } ;
struct auxtrace_queue {int tid; } ;


 int ENOMEM ;
 int PERF_SAMPLE_MAX_SIZE ;
 int cs_etm__clear_packet_queue (int *) ;
 int malloc (int ) ;
 void* zalloc (size_t) ;
 int zfree (void**) ;

__attribute__((used)) static int cs_etm__init_traceid_queue(struct cs_etm_queue *etmq,
          struct cs_etm_traceid_queue *tidq,
          u8 trace_chan_id)
{
 int rc = -ENOMEM;
 struct auxtrace_queue *queue;
 struct cs_etm_auxtrace *etm = etmq->etm;

 cs_etm__clear_packet_queue(&tidq->packet_queue);

 queue = &etmq->etm->queues.queue_array[etmq->queue_nr];
 tidq->tid = queue->tid;
 tidq->pid = -1;
 tidq->trace_chan_id = trace_chan_id;

 tidq->packet = zalloc(sizeof(struct cs_etm_packet));
 if (!tidq->packet)
  goto out;

 tidq->prev_packet = zalloc(sizeof(struct cs_etm_packet));
 if (!tidq->prev_packet)
  goto out_free;

 if (etm->synth_opts.last_branch) {
  size_t sz = sizeof(struct branch_stack);

  sz += etm->synth_opts.last_branch_sz *
        sizeof(struct branch_entry);
  tidq->last_branch = zalloc(sz);
  if (!tidq->last_branch)
   goto out_free;
  tidq->last_branch_rb = zalloc(sz);
  if (!tidq->last_branch_rb)
   goto out_free;
 }

 tidq->event_buf = malloc(PERF_SAMPLE_MAX_SIZE);
 if (!tidq->event_buf)
  goto out_free;

 return 0;

out_free:
 zfree(&tidq->last_branch_rb);
 zfree(&tidq->last_branch);
 zfree(&tidq->prev_packet);
 zfree(&tidq->packet);
out:
 return rc;
}
