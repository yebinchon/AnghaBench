
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ to_ip; int from_ip; int type; int flags; int pwre_payload; int mwait_payload; int ptw_payload; } ;
struct intel_pt_decoder {int set_fup_tx_flags; int set_fup_ptw; int set_fup_mwait; int set_fup_pwre; int set_fup_exstop; int set_fup_bep; TYPE_1__ state; int ip; int fup_pwre_payload; int fup_mwait_payload; int fup_ptw_payload; int fup_tx_flags; int tx_flags; } ;


 int INTEL_PT_BLK_ITEMS ;
 int INTEL_PT_BRANCH ;
 int INTEL_PT_EX_STOP ;
 int INTEL_PT_FUP_IP ;
 int INTEL_PT_MWAIT_OP ;
 int INTEL_PT_PTW ;
 int INTEL_PT_PWR_ENTRY ;
 int INTEL_PT_TRANSACTION ;

__attribute__((used)) static bool intel_pt_fup_event(struct intel_pt_decoder *decoder)
{
 bool ret = 0;

 if (decoder->set_fup_tx_flags) {
  decoder->set_fup_tx_flags = 0;
  decoder->tx_flags = decoder->fup_tx_flags;
  decoder->state.type = INTEL_PT_TRANSACTION;
  decoder->state.from_ip = decoder->ip;
  decoder->state.to_ip = 0;
  decoder->state.flags = decoder->fup_tx_flags;
  return 1;
 }
 if (decoder->set_fup_ptw) {
  decoder->set_fup_ptw = 0;
  decoder->state.type = INTEL_PT_PTW;
  decoder->state.flags |= INTEL_PT_FUP_IP;
  decoder->state.from_ip = decoder->ip;
  decoder->state.to_ip = 0;
  decoder->state.ptw_payload = decoder->fup_ptw_payload;
  return 1;
 }
 if (decoder->set_fup_mwait) {
  decoder->set_fup_mwait = 0;
  decoder->state.type = INTEL_PT_MWAIT_OP;
  decoder->state.from_ip = decoder->ip;
  decoder->state.to_ip = 0;
  decoder->state.mwait_payload = decoder->fup_mwait_payload;
  ret = 1;
 }
 if (decoder->set_fup_pwre) {
  decoder->set_fup_pwre = 0;
  decoder->state.type |= INTEL_PT_PWR_ENTRY;
  decoder->state.type &= ~INTEL_PT_BRANCH;
  decoder->state.from_ip = decoder->ip;
  decoder->state.to_ip = 0;
  decoder->state.pwre_payload = decoder->fup_pwre_payload;
  ret = 1;
 }
 if (decoder->set_fup_exstop) {
  decoder->set_fup_exstop = 0;
  decoder->state.type |= INTEL_PT_EX_STOP;
  decoder->state.type &= ~INTEL_PT_BRANCH;
  decoder->state.flags |= INTEL_PT_FUP_IP;
  decoder->state.from_ip = decoder->ip;
  decoder->state.to_ip = 0;
  ret = 1;
 }
 if (decoder->set_fup_bep) {
  decoder->set_fup_bep = 0;
  decoder->state.type |= INTEL_PT_BLK_ITEMS;
  decoder->state.type &= ~INTEL_PT_BRANCH;
  decoder->state.from_ip = decoder->ip;
  decoder->state.to_ip = 0;
  ret = 1;
 }
 return ret;
}
