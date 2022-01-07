
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct cs_etm_queue {int dummy; } ;
struct cs_etm_packet_queue {int dummy; } ;
typedef int pid_t ;
struct TYPE_4__ {int context_id; int ctxt_id_valid; } ;
struct TYPE_5__ {TYPE_1__ context; } ;
typedef TYPE_2__ ocsd_generic_trace_elem ;
typedef int ocsd_datapath_resp_t ;


 int OCSD_RESP_CONT ;
 int OCSD_RESP_FATAL_SYS_ERR ;
 scalar_t__ cs_etm__etmq_set_tid (struct cs_etm_queue*,int ,int const) ;
 int cs_etm_decoder__reset_timestamp (struct cs_etm_packet_queue*) ;

__attribute__((used)) static ocsd_datapath_resp_t
cs_etm_decoder__set_tid(struct cs_etm_queue *etmq,
   struct cs_etm_packet_queue *packet_queue,
   const ocsd_generic_trace_elem *elem,
   const uint8_t trace_chan_id)
{
 pid_t tid;


 if (!elem->context.ctxt_id_valid)
  return OCSD_RESP_CONT;

 tid = elem->context.context_id;
 if (cs_etm__etmq_set_tid(etmq, tid, trace_chan_id))
  return OCSD_RESP_FATAL_SYS_ERR;





 cs_etm_decoder__reset_timestamp(packet_queue);

 return OCSD_RESP_CONT;
}
