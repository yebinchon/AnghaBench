
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct cs_etm_queue {int dummy; } ;
struct cs_etm_packet {int isa; } ;
typedef int instr32 ;
typedef int instr16 ;






 int cs_etm__mem_access (struct cs_etm_queue*,int ,int ,int,int *) ;

__attribute__((used)) static bool cs_etm__is_svc_instr(struct cs_etm_queue *etmq, u8 trace_chan_id,
     struct cs_etm_packet *packet,
     u64 end_addr)
{

 u16 instr16 = 0;
 u32 instr32 = 0;
 u64 addr;

 switch (packet->isa) {
 case 129:
  addr = end_addr - 2;
  cs_etm__mem_access(etmq, trace_chan_id, addr,
       sizeof(instr16), (u8 *)&instr16);
  if ((instr16 & 0xFF00) == 0xDF00)
   return 1;

  break;
 case 131:
  addr = end_addr - 4;
  cs_etm__mem_access(etmq, trace_chan_id, addr,
       sizeof(instr32), (u8 *)&instr32);
  if ((instr32 & 0x0F000000) == 0x0F000000 &&
      (instr32 & 0xF0000000) != 0xF0000000)
   return 1;

  break;
 case 130:
  addr = end_addr - 4;
  cs_etm__mem_access(etmq, trace_chan_id, addr,
       sizeof(instr32), (u8 *)&instr32);
  if ((instr32 & 0xFFE0001F) == 0xd4000001)
   return 1;

  break;
 case 128:
 default:
  break;
 }

 return 0;
}
