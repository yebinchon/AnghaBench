
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct cs_etm_traceid_queue {struct cs_etm_packet* prev_packet; struct cs_etm_packet* packet; int trace_chan_id; } ;
struct cs_etm_queue {int dummy; } ;
struct cs_etm_packet {scalar_t__ exception_number; int end_addr; } ;


 scalar_t__ CS_ETMV3_EXC_DATA_FAULT ;
 scalar_t__ CS_ETMV3_EXC_GENERIC ;
 scalar_t__ CS_ETMV3_EXC_HYP ;
 scalar_t__ CS_ETMV3_EXC_JAZELLE_THUMBEE ;
 scalar_t__ CS_ETMV3_EXC_PREFETCH_ABORT ;
 scalar_t__ CS_ETMV3_EXC_SMC ;
 scalar_t__ CS_ETMV3_EXC_UNDEFINED_INSTR ;
 scalar_t__ CS_ETMV4_EXC_ALIGNMENT ;
 scalar_t__ CS_ETMV4_EXC_CALL ;
 scalar_t__ CS_ETMV4_EXC_DATA_FAULT ;
 scalar_t__ CS_ETMV4_EXC_END ;
 scalar_t__ CS_ETMV4_EXC_FIQ ;
 scalar_t__ CS_ETMV4_EXC_INST_FAULT ;
 scalar_t__ CS_ETMV4_EXC_TRAP ;
 scalar_t__ __perf_cs_etmv3_magic ;
 scalar_t__ __perf_cs_etmv4_magic ;
 int cs_etm__is_svc_instr (struct cs_etm_queue*,int ,struct cs_etm_packet*,int ) ;

__attribute__((used)) static bool cs_etm__is_sync_exception(struct cs_etm_queue *etmq,
          struct cs_etm_traceid_queue *tidq,
          u64 magic)
{
 u8 trace_chan_id = tidq->trace_chan_id;
 struct cs_etm_packet *packet = tidq->packet;
 struct cs_etm_packet *prev_packet = tidq->prev_packet;

 if (magic == __perf_cs_etmv3_magic)
  if (packet->exception_number == CS_ETMV3_EXC_SMC ||
      packet->exception_number == CS_ETMV3_EXC_HYP ||
      packet->exception_number == CS_ETMV3_EXC_JAZELLE_THUMBEE ||
      packet->exception_number == CS_ETMV3_EXC_UNDEFINED_INSTR ||
      packet->exception_number == CS_ETMV3_EXC_PREFETCH_ABORT ||
      packet->exception_number == CS_ETMV3_EXC_DATA_FAULT ||
      packet->exception_number == CS_ETMV3_EXC_GENERIC)
   return 1;

 if (magic == __perf_cs_etmv4_magic) {
  if (packet->exception_number == CS_ETMV4_EXC_TRAP ||
      packet->exception_number == CS_ETMV4_EXC_ALIGNMENT ||
      packet->exception_number == CS_ETMV4_EXC_INST_FAULT ||
      packet->exception_number == CS_ETMV4_EXC_DATA_FAULT)
   return 1;





  if (packet->exception_number == CS_ETMV4_EXC_CALL &&
      !cs_etm__is_svc_instr(etmq, trace_chan_id, prev_packet,
       prev_packet->end_addr))
   return 1;
  if (packet->exception_number > CS_ETMV4_EXC_FIQ &&
      packet->exception_number <= CS_ETMV4_EXC_END)
   return 1;
 }

 return 0;
}
