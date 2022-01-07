
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cs_etm_queue {int pending_timestamp; } ;



void cs_etm__etmq_set_traceid_queue_timestamp(struct cs_etm_queue *etmq,
           u8 trace_chan_id)
{







 etmq->pending_timestamp = trace_chan_id;
}
