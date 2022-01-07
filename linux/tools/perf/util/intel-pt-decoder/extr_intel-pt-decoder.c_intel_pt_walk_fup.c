
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct intel_pt_insn {scalar_t__ branch; } ;
struct intel_pt_decoder {int set_fup_tx_flags; void* pkt_state; int ip; int last_ip; } ;


 int EAGAIN ;
 int ENOENT ;
 scalar_t__ INTEL_PT_BR_CONDITIONAL ;
 scalar_t__ INTEL_PT_BR_INDIRECT ;
 int INTEL_PT_RETURN ;
 void* INTEL_PT_STATE_ERR_RESYNC ;
 int intel_pt_bug (struct intel_pt_decoder*) ;
 scalar_t__ intel_pt_fup_event (struct intel_pt_decoder*) ;
 scalar_t__ intel_pt_fup_with_nlip (struct intel_pt_decoder*,struct intel_pt_insn*,int ,int) ;
 int intel_pt_log_at (char*,int ) ;
 int intel_pt_walk_insn (struct intel_pt_decoder*,struct intel_pt_insn*,int ) ;

__attribute__((used)) static int intel_pt_walk_fup(struct intel_pt_decoder *decoder)
{
 struct intel_pt_insn intel_pt_insn;
 uint64_t ip;
 int err;

 ip = decoder->last_ip;

 while (1) {
  err = intel_pt_walk_insn(decoder, &intel_pt_insn, ip);
  if (err == INTEL_PT_RETURN)
   return 0;
  if (err == -EAGAIN ||
      intel_pt_fup_with_nlip(decoder, &intel_pt_insn, ip, err)) {
   if (intel_pt_fup_event(decoder))
    return 0;
   return -EAGAIN;
  }
  decoder->set_fup_tx_flags = 0;
  if (err)
   return err;

  if (intel_pt_insn.branch == INTEL_PT_BR_INDIRECT) {
   intel_pt_log_at("ERROR: Unexpected indirect branch",
     decoder->ip);
   decoder->pkt_state = INTEL_PT_STATE_ERR_RESYNC;
   return -ENOENT;
  }

  if (intel_pt_insn.branch == INTEL_PT_BR_CONDITIONAL) {
   intel_pt_log_at("ERROR: Unexpected conditional branch",
     decoder->ip);
   decoder->pkt_state = INTEL_PT_STATE_ERR_RESYNC;
   return -ENOENT;
  }

  intel_pt_bug(decoder);
 }
}
