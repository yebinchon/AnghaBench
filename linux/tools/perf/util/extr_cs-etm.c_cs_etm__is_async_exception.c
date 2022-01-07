
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct cs_etm_traceid_queue {struct cs_etm_packet* packet; } ;
struct cs_etm_packet {scalar_t__ exception_number; } ;


 scalar_t__ CS_ETMV3_EXC_ASYNC_DATA_ABORT ;
 scalar_t__ CS_ETMV3_EXC_DEBUG_HALT ;
 scalar_t__ CS_ETMV3_EXC_FIQ ;
 scalar_t__ CS_ETMV3_EXC_IRQ ;
 scalar_t__ CS_ETMV3_EXC_PE_RESET ;
 scalar_t__ CS_ETMV4_EXC_DATA_DEBUG ;
 scalar_t__ CS_ETMV4_EXC_DEBUG_HALT ;
 scalar_t__ CS_ETMV4_EXC_FIQ ;
 scalar_t__ CS_ETMV4_EXC_INST_DEBUG ;
 scalar_t__ CS_ETMV4_EXC_IRQ ;
 scalar_t__ CS_ETMV4_EXC_RESET ;
 scalar_t__ CS_ETMV4_EXC_SYSTEM_ERROR ;
 scalar_t__ __perf_cs_etmv3_magic ;
 scalar_t__ __perf_cs_etmv4_magic ;

__attribute__((used)) static bool cs_etm__is_async_exception(struct cs_etm_traceid_queue *tidq,
           u64 magic)
{
 struct cs_etm_packet *packet = tidq->packet;

 if (magic == __perf_cs_etmv3_magic)
  if (packet->exception_number == CS_ETMV3_EXC_DEBUG_HALT ||
      packet->exception_number == CS_ETMV3_EXC_ASYNC_DATA_ABORT ||
      packet->exception_number == CS_ETMV3_EXC_PE_RESET ||
      packet->exception_number == CS_ETMV3_EXC_IRQ ||
      packet->exception_number == CS_ETMV3_EXC_FIQ)
   return 1;

 if (magic == __perf_cs_etmv4_magic)
  if (packet->exception_number == CS_ETMV4_EXC_RESET ||
      packet->exception_number == CS_ETMV4_EXC_DEBUG_HALT ||
      packet->exception_number == CS_ETMV4_EXC_SYSTEM_ERROR ||
      packet->exception_number == CS_ETMV4_EXC_INST_DEBUG ||
      packet->exception_number == CS_ETMV4_EXC_DATA_DEBUG ||
      packet->exception_number == CS_ETMV4_EXC_IRQ ||
      packet->exception_number == CS_ETMV4_EXC_FIQ)
   return 1;

 return 0;
}
