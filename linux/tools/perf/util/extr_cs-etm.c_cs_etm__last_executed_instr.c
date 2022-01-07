
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct cs_etm_packet {scalar_t__ sample_type; scalar_t__ last_instr_size; scalar_t__ end_addr; } ;


 scalar_t__ CS_ETM_DISCONTINUITY ;

__attribute__((used)) static inline
u64 cs_etm__last_executed_instr(const struct cs_etm_packet *packet)
{

 if (packet->sample_type == CS_ETM_DISCONTINUITY)
  return 0;

 return packet->end_addr - packet->last_instr_size;
}
