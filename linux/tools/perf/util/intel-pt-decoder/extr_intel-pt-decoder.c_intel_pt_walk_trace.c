
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int payload; int count; } ;
struct TYPE_4__ {int ptw_payload; int pwrx_payload; int to_ip; int from_ip; int type; } ;
struct intel_pt_decoder {int pge; int set_fup_mwait; int continuous_period; int have_tma; int have_last_ip; int cr3; int mtc_insn; int exec_mode; int fup_ptw_payload; int set_fup_ptw; int fup_mwait_payload; int fup_pwre_payload; int set_fup_pwre; int set_fup_exstop; int set_fup_bep; int pos; TYPE_1__ packet; TYPE_2__ state; int ip; int cbr_seen; int cbr; int timestamp; int period_type; int stack; int last_ip; int pkt_state; int branch_enable; TYPE_1__ tnt; } ;


 int BIT63 ;
 int EAGAIN ;





 int INTEL_PT_BLK_ITEMS ;




 int INTEL_PT_EX_STOP ;

 int INTEL_PT_INSTRUCTION ;







 int INTEL_PT_PERIOD_MTC ;



 int INTEL_PT_PTW ;




 int INTEL_PT_PWR_ENTRY ;
 int INTEL_PT_PWR_EXIT ;
 int INTEL_PT_STATE_FUP ;
 int INTEL_PT_STATE_FUP_NO_TIP ;
 int INTEL_PT_STATE_TIP ;
 int INTEL_PT_STATE_TIP_PGD ;
 int INTEL_PT_STATE_TNT ;






 int INTEL_PT_TRACE_BEGIN ;


 int intel_pt_bbp (struct intel_pt_decoder*) ;
 int intel_pt_bip (struct intel_pt_decoder*) ;
 int intel_pt_bug (struct intel_pt_decoder*) ;
 int intel_pt_calc_cbr (struct intel_pt_decoder*) ;
 int intel_pt_calc_cyc_timestamp (struct intel_pt_decoder*) ;
 int intel_pt_calc_mtc_timestamp (struct intel_pt_decoder*) ;
 int intel_pt_calc_tma (struct intel_pt_decoder*) ;
 int intel_pt_calc_tsc_timestamp (struct intel_pt_decoder*) ;
 int intel_pt_clear_stack (int *) ;
 int intel_pt_clear_tx_flags (struct intel_pt_decoder*) ;
 int intel_pt_fup_event (struct intel_pt_decoder*) ;
 int intel_pt_get_next_packet (struct intel_pt_decoder*) ;
 int intel_pt_log_at (char*,int ) ;
 int intel_pt_mode_tsx (struct intel_pt_decoder*,int*) ;
 int intel_pt_mtc_cyc_cnt_pge (struct intel_pt_decoder*) ;
 int intel_pt_overflow (struct intel_pt_decoder*) ;
 int intel_pt_set_ip (struct intel_pt_decoder*) ;
 int intel_pt_set_last_ip (struct intel_pt_decoder*) ;
 int intel_pt_update_in_tx (struct intel_pt_decoder*) ;
 int intel_pt_walk_fup (struct intel_pt_decoder*) ;
 int intel_pt_walk_fup_tip (struct intel_pt_decoder*) ;
 int intel_pt_walk_psbend (struct intel_pt_decoder*) ;
 int intel_pt_walk_tip (struct intel_pt_decoder*) ;
 int intel_pt_walk_tnt (struct intel_pt_decoder*) ;

__attribute__((used)) static int intel_pt_walk_trace(struct intel_pt_decoder *decoder)
{
 bool no_tip = 0;
 int err;

 while (1) {
  err = intel_pt_get_next_packet(decoder);
  if (err)
   return err;
next:
  switch (decoder->packet.type) {
  case 131:
   if (!decoder->packet.count)
    break;
   decoder->tnt = decoder->packet;
   decoder->pkt_state = INTEL_PT_STATE_TNT;
   err = intel_pt_walk_tnt(decoder);
   if (err == -EAGAIN)
    break;
   return err;

  case 134:
   if (decoder->packet.count != 0)
    intel_pt_set_last_ip(decoder);
   decoder->pkt_state = INTEL_PT_STATE_TIP_PGD;
   return intel_pt_walk_tip(decoder);

  case 133: {
   decoder->pge = 1;
   intel_pt_mtc_cyc_cnt_pge(decoder);
   if (decoder->packet.count == 0) {
    intel_pt_log_at("Skipping zero TIP.PGE",
      decoder->pos);
    break;
   }
   intel_pt_set_ip(decoder);
   decoder->state.from_ip = 0;
   decoder->state.to_ip = decoder->ip;
   decoder->state.type |= INTEL_PT_TRACE_BEGIN;
   return 0;
  }

  case 144:
   return intel_pt_overflow(decoder);

  case 135:
   if (decoder->packet.count != 0)
    intel_pt_set_last_ip(decoder);
   decoder->pkt_state = INTEL_PT_STATE_TIP;
   return intel_pt_walk_tip(decoder);

  case 150:
   if (decoder->packet.count == 0) {
    intel_pt_log_at("Skipping zero FUP",
      decoder->pos);
    no_tip = 0;
    break;
   }
   intel_pt_set_last_ip(decoder);
   if (!decoder->branch_enable) {
    decoder->ip = decoder->last_ip;
    if (intel_pt_fup_event(decoder))
     return 0;
    no_tip = 0;
    break;
   }
   if (decoder->set_fup_mwait)
    no_tip = 1;
   err = intel_pt_walk_fup(decoder);
   if (err != -EAGAIN) {
    if (err)
     return err;
    if (no_tip)
     decoder->pkt_state =
      INTEL_PT_STATE_FUP_NO_TIP;
    else
     decoder->pkt_state = INTEL_PT_STATE_FUP;
    return 0;
   }
   if (no_tip) {
    no_tip = 0;
    break;
   }
   return intel_pt_walk_fup_tip(decoder);

  case 130:
   decoder->pge = 0;
   decoder->continuous_period = 0;
   intel_pt_clear_tx_flags(decoder);
   decoder->have_tma = 0;
   break;

  case 141:
   decoder->last_ip = 0;
   decoder->have_last_ip = 1;
   intel_pt_clear_stack(&decoder->stack);
   err = intel_pt_walk_psbend(decoder);
   if (err == -EAGAIN)
    goto next;
   if (err)
    return err;





   if (decoder->cbr != decoder->cbr_seen)
    return 0;
   break;

  case 142:
   decoder->cr3 = decoder->packet.payload & (BIT63 - 1);
   break;

  case 146:
   intel_pt_calc_mtc_timestamp(decoder);
   if (decoder->period_type != INTEL_PT_PERIOD_MTC)
    break;




   if (!decoder->mtc_insn)
    break;
   decoder->mtc_insn = 0;

   if (!decoder->timestamp)
    break;
   decoder->state.type = INTEL_PT_INSTRUCTION;
   decoder->state.from_ip = decoder->ip;
   decoder->state.to_ip = 0;
   decoder->mtc_insn = 0;
   return 0;

  case 129:
   intel_pt_calc_tsc_timestamp(decoder);
   break;

  case 132:
   intel_pt_calc_tma(decoder);
   break;

  case 153:
   intel_pt_calc_cyc_timestamp(decoder);
   break;

  case 154:
   intel_pt_calc_cbr(decoder);
   if (decoder->cbr != decoder->cbr_seen)
    return 0;
   break;

  case 148:
   decoder->exec_mode = decoder->packet.payload;
   break;

  case 147:

   if (!decoder->pge) {
    intel_pt_update_in_tx(decoder);
    break;
   }
   err = intel_pt_mode_tsx(decoder, &no_tip);
   if (err)
    return err;
   goto next;

  case 159:
   return intel_pt_bug(decoder);

  case 140:
  case 128:
  case 149:
  case 143:
   break;

  case 138:
   decoder->fup_ptw_payload = decoder->packet.payload;
   err = intel_pt_get_next_packet(decoder);
   if (err)
    return err;
   if (decoder->packet.type == 150) {
    decoder->set_fup_ptw = 1;
    no_tip = 1;
   } else {
    intel_pt_log_at("ERROR: Missing FUP after PTWRITE",
      decoder->pos);
   }
   goto next;

  case 139:
   decoder->state.type = INTEL_PT_PTW;
   decoder->state.from_ip = decoder->ip;
   decoder->state.to_ip = 0;
   decoder->state.ptw_payload = decoder->packet.payload;
   return 0;

  case 145:
   decoder->fup_mwait_payload = decoder->packet.payload;
   decoder->set_fup_mwait = 1;
   break;

  case 137:
   if (decoder->set_fup_mwait) {
    decoder->fup_pwre_payload =
       decoder->packet.payload;
    decoder->set_fup_pwre = 1;
    break;
   }
   decoder->state.type = INTEL_PT_PWR_ENTRY;
   decoder->state.from_ip = decoder->ip;
   decoder->state.to_ip = 0;
   decoder->state.pwrx_payload = decoder->packet.payload;
   return 0;

  case 151:
   err = intel_pt_get_next_packet(decoder);
   if (err)
    return err;
   if (decoder->packet.type == 150) {
    decoder->set_fup_exstop = 1;
    no_tip = 1;
   } else {
    intel_pt_log_at("ERROR: Missing FUP after EXSTOP",
      decoder->pos);
   }
   goto next;

  case 152:
   decoder->state.type = INTEL_PT_EX_STOP;
   decoder->state.from_ip = decoder->ip;
   decoder->state.to_ip = 0;
   return 0;

  case 136:
   decoder->state.type = INTEL_PT_PWR_EXIT;
   decoder->state.from_ip = decoder->ip;
   decoder->state.to_ip = 0;
   decoder->state.pwrx_payload = decoder->packet.payload;
   return 0;

  case 158:
   intel_pt_bbp(decoder);
   break;

  case 155:
   intel_pt_bip(decoder);
   break;

  case 157:
   decoder->state.type = INTEL_PT_BLK_ITEMS;
   decoder->state.from_ip = decoder->ip;
   decoder->state.to_ip = 0;
   return 0;

  case 156:
   err = intel_pt_get_next_packet(decoder);
   if (err)
    return err;
   if (decoder->packet.type == 150) {
    decoder->set_fup_bep = 1;
    no_tip = 1;
   } else {
    intel_pt_log_at("ERROR: Missing FUP after BEP",
      decoder->pos);
   }
   goto next;

  default:
   return intel_pt_bug(decoder);
  }
 }
}
