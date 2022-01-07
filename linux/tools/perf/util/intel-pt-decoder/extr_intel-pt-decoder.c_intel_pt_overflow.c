
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {int overflow; int pkt_state; scalar_t__ timestamp_insn_cnt; } ;


 int EOVERFLOW ;
 int INTEL_PT_STATE_ERR_RESYNC ;
 int intel_pt_clear_tx_flags (struct intel_pt_decoder*) ;
 int intel_pt_log (char*) ;

__attribute__((used)) static int intel_pt_overflow(struct intel_pt_decoder *decoder)
{
 intel_pt_log("ERROR: Buffer overflow\n");
 intel_pt_clear_tx_flags(decoder);
 decoder->timestamp_insn_cnt = 0;
 decoder->pkt_state = INTEL_PT_STATE_ERR_RESYNC;
 decoder->overflow = 1;
 return -EOVERFLOW;
}
