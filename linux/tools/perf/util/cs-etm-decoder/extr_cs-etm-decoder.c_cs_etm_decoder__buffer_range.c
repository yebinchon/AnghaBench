
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct cs_etm_queue {int dummy; } ;
struct cs_etm_packet_queue {size_t tail; int instr_count; struct cs_etm_packet* packet_buffer; } ;
struct cs_etm_packet {int last_instr_type; int last_instr_taken_branch; int last_instr_size; int last_instr_cond; int last_instr_subtype; scalar_t__ instr_count; int end_addr; int start_addr; int isa; } ;
struct TYPE_3__ {int isa; int last_i_type; int last_instr_exec; scalar_t__ num_instr_range; int last_instr_sz; int last_instr_cond; int last_i_subtype; int en_addr; int st_addr; } ;
typedef TYPE_1__ ocsd_generic_trace_elem ;
typedef int ocsd_datapath_resp_t ;


 int CS_ETM_ISA_A32 ;
 int CS_ETM_ISA_A64 ;
 int CS_ETM_ISA_T32 ;
 int CS_ETM_ISA_UNKNOWN ;
 int CS_ETM_RANGE ;






 int OCSD_RESP_CONT ;
 int OCSD_RESP_WAIT ;
 scalar_t__ cs_etm__etmq_is_timeless (struct cs_etm_queue*) ;
 int cs_etm_decoder__buffer_packet (struct cs_etm_packet_queue*,int const,int ) ;
 int cs_etm_decoder__do_soft_timestamp (struct cs_etm_queue*,struct cs_etm_packet_queue*,int const) ;
__attribute__((used)) static ocsd_datapath_resp_t
cs_etm_decoder__buffer_range(struct cs_etm_queue *etmq,
        struct cs_etm_packet_queue *packet_queue,
        const ocsd_generic_trace_elem *elem,
        const uint8_t trace_chan_id)
{
 int ret = 0;
 struct cs_etm_packet *packet;

 ret = cs_etm_decoder__buffer_packet(packet_queue, trace_chan_id,
         CS_ETM_RANGE);
 if (ret != OCSD_RESP_CONT && ret != OCSD_RESP_WAIT)
  return ret;

 packet = &packet_queue->packet_buffer[packet_queue->tail];

 switch (elem->isa) {
 case 134:
  packet->isa = CS_ETM_ISA_A64;
  break;
 case 133:
  packet->isa = CS_ETM_ISA_A32;
  break;
 case 129:
  packet->isa = CS_ETM_ISA_T32;
  break;
 case 130:
 case 131:
 case 132:
 case 128:
 default:
  packet->isa = CS_ETM_ISA_UNKNOWN;
 }

 packet->start_addr = elem->st_addr;
 packet->end_addr = elem->en_addr;
 packet->instr_count = elem->num_instr_range;
 packet->last_instr_type = elem->last_i_type;
 packet->last_instr_subtype = elem->last_i_subtype;
 packet->last_instr_cond = elem->last_instr_cond;

 switch (elem->last_i_type) {
 case 140:
 case 139:
  packet->last_instr_taken_branch = elem->last_instr_exec;
  break;
 case 137:
 case 138:
 case 135:
 case 136:
 default:
  packet->last_instr_taken_branch = 0;
  break;
 }

 packet->last_instr_size = elem->last_instr_sz;


 if (cs_etm__etmq_is_timeless(etmq))
  goto out;






 if (ret == OCSD_RESP_WAIT)
  goto out;

 packet_queue->instr_count += elem->num_instr_range;

 ret = cs_etm_decoder__do_soft_timestamp(etmq, packet_queue,
      trace_chan_id);
out:
 return ret;
}
