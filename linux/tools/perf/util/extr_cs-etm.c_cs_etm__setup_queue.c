
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct cs_etm_queue {unsigned int queue_nr; scalar_t__ offset; struct cs_etm_auxtrace* etm; } ;
struct cs_etm_auxtrace {int heap; scalar_t__ timeless_decoding; } ;
struct auxtrace_queue {struct cs_etm_queue* priv; int head; } ;


 int ENOMEM ;
 unsigned int TO_CS_QUEUE_NR (unsigned int,int ) ;
 int auxtrace_heap__add (int *,unsigned int,int ) ;
 struct cs_etm_queue* cs_etm__alloc_queue (struct cs_etm_auxtrace*) ;
 int cs_etm__clear_all_packet_queues (struct cs_etm_queue*) ;
 int cs_etm__decode_data_block (struct cs_etm_queue*) ;
 int cs_etm__etmq_get_timestamp (struct cs_etm_queue*,int *) ;
 int cs_etm__get_data_block (struct cs_etm_queue*) ;
 scalar_t__ list_empty (int *) ;
 int trace_id_chan ;

__attribute__((used)) static int cs_etm__setup_queue(struct cs_etm_auxtrace *etm,
          struct auxtrace_queue *queue,
          unsigned int queue_nr)
{
 int ret = 0;
 unsigned int cs_queue_nr;
 u8 trace_chan_id;
 u64 timestamp;
 struct cs_etm_queue *etmq = queue->priv;

 if (list_empty(&queue->head) || etmq)
  goto out;

 etmq = cs_etm__alloc_queue(etm);

 if (!etmq) {
  ret = -ENOMEM;
  goto out;
 }

 queue->priv = etmq;
 etmq->etm = etm;
 etmq->queue_nr = queue_nr;
 etmq->offset = 0;

 if (etm->timeless_decoding)
  goto out;
 while (1) {




  ret = cs_etm__get_data_block(etmq);
  if (ret <= 0)
   goto out;






  ret = cs_etm__decode_data_block(etmq);
  if (ret)
   goto out;





  timestamp = cs_etm__etmq_get_timestamp(etmq, &trace_chan_id);


  if (timestamp)
   break;
  cs_etm__clear_all_packet_queues(etmq);
 }
 cs_queue_nr = TO_CS_QUEUE_NR(queue_nr, trace_id_chan);
 ret = auxtrace_heap__add(&etm->heap, cs_queue_nr, timestamp);
out:
 return ret;
}
