
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct cs_etm_queue {int dummy; } ;
struct cs_etm_packet_queue {scalar_t__ instr_count; scalar_t__ next_timestamp; scalar_t__ timestamp; } ;
struct TYPE_3__ {scalar_t__ timestamp; } ;
typedef TYPE_1__ ocsd_generic_trace_elem ;
typedef int ocsd_datapath_resp_t ;


 int OCSD_RESP_CONT ;
 int OCSD_RESP_FATAL_SYS_ERR ;
 int OCSD_RESP_WAIT ;
 struct cs_etm_packet_queue* cs_etm__etmq_get_packet_queue (struct cs_etm_queue*,int const) ;
 int cs_etm__etmq_set_traceid_queue_timestamp (struct cs_etm_queue*,int const) ;

__attribute__((used)) static ocsd_datapath_resp_t
cs_etm_decoder__do_hard_timestamp(struct cs_etm_queue *etmq,
      const ocsd_generic_trace_elem *elem,
      const uint8_t trace_chan_id)
{
 struct cs_etm_packet_queue *packet_queue;


 packet_queue = cs_etm__etmq_get_packet_queue(etmq, trace_chan_id);
 if (!packet_queue)
  return OCSD_RESP_FATAL_SYS_ERR;






 if (packet_queue->timestamp) {
  packet_queue->next_timestamp = elem->timestamp;
  return OCSD_RESP_CONT;
 }
 packet_queue->timestamp = elem->timestamp - packet_queue->instr_count;
 packet_queue->next_timestamp = elem->timestamp;
 packet_queue->instr_count = 0;


 cs_etm__etmq_set_traceid_queue_timestamp(etmq, trace_chan_id);


 return OCSD_RESP_WAIT;
}
