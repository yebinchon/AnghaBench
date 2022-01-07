
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cs_etm_packet {scalar_t__ sample_type; int start_addr; } ;


 scalar_t__ CS_ETM_DISCONTINUITY ;

__attribute__((used)) static inline u64 cs_etm__first_executed_instr(struct cs_etm_packet *packet)
{

 if (packet->sample_type == CS_ETM_DISCONTINUITY)
  return 0;

 return packet->start_addr;
}
