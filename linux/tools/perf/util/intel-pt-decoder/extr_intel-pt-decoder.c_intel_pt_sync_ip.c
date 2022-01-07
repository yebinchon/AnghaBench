
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int to_ip; scalar_t__ from_ip; scalar_t__ type; } ;
struct intel_pt_decoder {int set_fup_tx_flags; int set_fup_ptw; int set_fup_mwait; int set_fup_pwre; int set_fup_exstop; int set_fup_bep; int overflow; int ip; TYPE_1__ state; void* pkt_state; int branch_enable; } ;


 void* INTEL_PT_STATE_IN_SYNC ;
 int intel_pt_log (char*) ;
 int intel_pt_log_to (char*,int ) ;
 int intel_pt_walk_to_ip (struct intel_pt_decoder*) ;

__attribute__((used)) static int intel_pt_sync_ip(struct intel_pt_decoder *decoder)
{
 int err;

 decoder->set_fup_tx_flags = 0;
 decoder->set_fup_ptw = 0;
 decoder->set_fup_mwait = 0;
 decoder->set_fup_pwre = 0;
 decoder->set_fup_exstop = 0;
 decoder->set_fup_bep = 0;

 if (!decoder->branch_enable) {
  decoder->pkt_state = INTEL_PT_STATE_IN_SYNC;
  decoder->overflow = 0;
  decoder->state.type = 0;
  return 0;
 }

 intel_pt_log("Scanning for full IP\n");
 err = intel_pt_walk_to_ip(decoder);
 if (err)
  return err;

 decoder->pkt_state = INTEL_PT_STATE_IN_SYNC;
 decoder->overflow = 0;

 decoder->state.from_ip = 0;
 decoder->state.to_ip = decoder->ip;
 intel_pt_log_to("Setting IP", decoder->ip);

 return 0;
}
