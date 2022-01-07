
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct cs_etm_packet_queue {size_t tail; struct cs_etm_packet* packet_buffer; } ;
struct cs_etm_packet {int exception_number; } ;
struct TYPE_3__ {int exception_number; } ;
typedef TYPE_1__ ocsd_generic_trace_elem ;
typedef int ocsd_datapath_resp_t ;


 int CS_ETM_EXCEPTION ;
 int OCSD_RESP_CONT ;
 int OCSD_RESP_WAIT ;
 int cs_etm_decoder__buffer_packet (struct cs_etm_packet_queue*,int const,int ) ;

__attribute__((used)) static ocsd_datapath_resp_t
cs_etm_decoder__buffer_exception(struct cs_etm_packet_queue *queue,
     const ocsd_generic_trace_elem *elem,
     const uint8_t trace_chan_id)
{ int ret = 0;
 struct cs_etm_packet *packet;

 ret = cs_etm_decoder__buffer_packet(queue, trace_chan_id,
         CS_ETM_EXCEPTION);
 if (ret != OCSD_RESP_CONT && ret != OCSD_RESP_WAIT)
  return ret;

 packet = &queue->packet_buffer[queue->tail];
 packet->exception_number = elem->exception_number;

 return ret;
}
