
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cs_etm_queue {int dummy; } ;
struct cs_etm_packet {scalar_t__ isa; int start_addr; } ;


 scalar_t__ CS_ETM_ISA_T32 ;
 scalar_t__ cs_etm__t32_instr_size (struct cs_etm_queue*,int,int) ;

__attribute__((used)) static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
         u64 trace_chan_id,
         const struct cs_etm_packet *packet,
         u64 offset)
{
 if (packet->isa == CS_ETM_ISA_T32) {
  u64 addr = packet->start_addr;

  while (offset > 0) {
   addr += cs_etm__t32_instr_size(etmq,
             trace_chan_id, addr);
   offset--;
  }
  return addr;
 }


 return packet->start_addr + offset * 4;
}
