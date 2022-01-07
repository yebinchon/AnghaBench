
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct cs_etm_traceid_queue {int dummy; } ;
struct cs_etm_queue {int dummy; } ;
struct TYPE_7__ {TYPE_1__* heap_array; int heap_cnt; } ;
struct TYPE_6__ {struct auxtrace_queue* queue_array; } ;
struct cs_etm_auxtrace {TYPE_3__ heap; TYPE_2__ queues; } ;
struct auxtrace_queue {struct cs_etm_queue* priv; } ;
struct TYPE_5__ {unsigned int queue_nr; } ;


 int EINVAL ;
 unsigned int TO_CS_QUEUE_NR (unsigned int,int ) ;
 unsigned int TO_QUEUE_NR (unsigned int) ;
 int TO_TRACE_CHAN_ID (unsigned int) ;
 int auxtrace_heap__add (TYPE_3__*,unsigned int,int ) ;
 int auxtrace_heap__pop (TYPE_3__*) ;
 int cs_etm__clear_all_traceid_queues (struct cs_etm_queue*) ;
 int cs_etm__decode_data_block (struct cs_etm_queue*) ;
 int cs_etm__etmq_get_timestamp (struct cs_etm_queue*,int *) ;
 struct cs_etm_traceid_queue* cs_etm__etmq_get_traceid_queue (struct cs_etm_queue*,int ) ;
 int cs_etm__get_data_block (struct cs_etm_queue*) ;
 int cs_etm__process_traceid_queue (struct cs_etm_queue*,struct cs_etm_traceid_queue*) ;

__attribute__((used)) static int cs_etm__process_queues(struct cs_etm_auxtrace *etm)
{
 int ret = 0;
 unsigned int cs_queue_nr, queue_nr;
 u8 trace_chan_id;
 u64 timestamp;
 struct auxtrace_queue *queue;
 struct cs_etm_queue *etmq;
 struct cs_etm_traceid_queue *tidq;

 while (1) {
  if (!etm->heap.heap_cnt)
   goto out;


  cs_queue_nr = etm->heap.heap_array[0].queue_nr;
  queue_nr = TO_QUEUE_NR(cs_queue_nr);
  trace_chan_id = TO_TRACE_CHAN_ID(cs_queue_nr);
  queue = &etm->queues.queue_array[queue_nr];
  etmq = queue->priv;





  auxtrace_heap__pop(&etm->heap);

  tidq = cs_etm__etmq_get_traceid_queue(etmq, trace_chan_id);
  if (!tidq) {





   ret = -EINVAL;
   goto out;
  }





  ret = cs_etm__process_traceid_queue(etmq, tidq);
  if (ret < 0)
   goto out;






refetch:
  ret = cs_etm__get_data_block(etmq);
  if (ret < 0)
   goto out;





  if (!ret)
   continue;

  ret = cs_etm__decode_data_block(etmq);
  if (ret)
   goto out;

  timestamp = cs_etm__etmq_get_timestamp(etmq, &trace_chan_id);

  if (!timestamp) {
   cs_etm__clear_all_traceid_queues(etmq);


   goto refetch;
  }







  cs_queue_nr = TO_CS_QUEUE_NR(queue_nr, trace_chan_id);
  ret = auxtrace_heap__add(&etm->heap, cs_queue_nr, timestamp);
 }

out:
 return ret;
}
