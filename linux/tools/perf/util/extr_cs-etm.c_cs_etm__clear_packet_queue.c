
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs_etm_packet_queue {TYPE_1__* packet_buffer; scalar_t__ packet_count; scalar_t__ tail; scalar_t__ head; } ;
struct TYPE_2__ {int last_instr_taken_branch; int cpu; int trace_chan_id; int exception_number; scalar_t__ flags; scalar_t__ last_instr_cond; scalar_t__ last_instr_subtype; scalar_t__ last_instr_type; scalar_t__ last_instr_size; scalar_t__ instr_count; void* end_addr; void* start_addr; int isa; } ;


 void* CS_ETM_INVAL_ADDR ;
 int CS_ETM_ISA_UNKNOWN ;
 int CS_ETM_PACKET_MAX_BUFFER ;
 int INT_MIN ;
 int UINT32_MAX ;
 int UINT8_MAX ;

__attribute__((used)) static void cs_etm__clear_packet_queue(struct cs_etm_packet_queue *queue)
{
 int i;

 queue->head = 0;
 queue->tail = 0;
 queue->packet_count = 0;
 for (i = 0; i < CS_ETM_PACKET_MAX_BUFFER; i++) {
  queue->packet_buffer[i].isa = CS_ETM_ISA_UNKNOWN;
  queue->packet_buffer[i].start_addr = CS_ETM_INVAL_ADDR;
  queue->packet_buffer[i].end_addr = CS_ETM_INVAL_ADDR;
  queue->packet_buffer[i].instr_count = 0;
  queue->packet_buffer[i].last_instr_taken_branch = 0;
  queue->packet_buffer[i].last_instr_size = 0;
  queue->packet_buffer[i].last_instr_type = 0;
  queue->packet_buffer[i].last_instr_subtype = 0;
  queue->packet_buffer[i].last_instr_cond = 0;
  queue->packet_buffer[i].flags = 0;
  queue->packet_buffer[i].exception_number = UINT32_MAX;
  queue->packet_buffer[i].trace_chan_id = UINT8_MAX;
  queue->packet_buffer[i].cpu = INT_MIN;
 }
}
