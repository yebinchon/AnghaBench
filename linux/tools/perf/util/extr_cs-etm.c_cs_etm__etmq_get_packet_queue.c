
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cs_etm_packet_queue {int dummy; } ;
struct cs_etm_traceid_queue {struct cs_etm_packet_queue packet_queue; } ;
struct cs_etm_queue {int dummy; } ;


 struct cs_etm_traceid_queue* cs_etm__etmq_get_traceid_queue (struct cs_etm_queue*,int ) ;

struct cs_etm_packet_queue
*cs_etm__etmq_get_packet_queue(struct cs_etm_queue *etmq, u8 trace_chan_id)
{
 struct cs_etm_traceid_queue *tidq;

 tidq = cs_etm__etmq_get_traceid_queue(etmq, trace_chan_id);
 if (tidq)
  return &tidq->packet_queue;

 return ((void*)0);
}
