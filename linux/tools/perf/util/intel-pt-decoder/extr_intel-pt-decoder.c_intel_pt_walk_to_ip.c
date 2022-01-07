
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int type; int payload; } ;
struct intel_pt_decoder {int continuous_period; int pge; int cr3; int exec_mode; int have_tma; int have_last_ip; TYPE_2__ state; int ip; int stack; int last_ip; TYPE_1__ packet; } ;


 int BIT63 ;
 int INTEL_PT_TRACE_BEGIN ;
 int INTEL_PT_TRACE_END ;


 int intel_pt_bug (struct intel_pt_decoder*) ;
 int intel_pt_calc_cbr (struct intel_pt_decoder*) ;
 int intel_pt_calc_cyc_timestamp (struct intel_pt_decoder*) ;
 int intel_pt_calc_mtc_timestamp (struct intel_pt_decoder*) ;
 int intel_pt_calc_tma (struct intel_pt_decoder*) ;
 int intel_pt_calc_tsc_timestamp (struct intel_pt_decoder*) ;
 int intel_pt_clear_stack (int *) ;
 int intel_pt_clear_tx_flags (struct intel_pt_decoder*) ;
 int intel_pt_get_next_packet (struct intel_pt_decoder*) ;
 int intel_pt_have_ip (struct intel_pt_decoder*) ;
 int intel_pt_mtc_cyc_cnt_pge (struct intel_pt_decoder*) ;
 int intel_pt_overflow (struct intel_pt_decoder*) ;
 int intel_pt_set_ip (struct intel_pt_decoder*) ;
 int intel_pt_update_in_tx (struct intel_pt_decoder*) ;
 int intel_pt_walk_psb (struct intel_pt_decoder*) ;

__attribute__((used)) static int intel_pt_walk_to_ip(struct intel_pt_decoder *decoder)
{
 int err;

 while (1) {
  err = intel_pt_get_next_packet(decoder);
  if (err)
   return err;

  switch (decoder->packet.type) {
  case 134:
   decoder->continuous_period = 0;
   decoder->pge = 0;
   if (intel_pt_have_ip(decoder))
    intel_pt_set_ip(decoder);
   if (!decoder->ip)
    break;
   decoder->state.type |= INTEL_PT_TRACE_END;
   return 0;

  case 133:
   decoder->pge = 1;
   intel_pt_mtc_cyc_cnt_pge(decoder);
   if (intel_pt_have_ip(decoder))
    intel_pt_set_ip(decoder);
   if (!decoder->ip)
    break;
   decoder->state.type |= INTEL_PT_TRACE_BEGIN;
   return 0;

  case 135:
   decoder->pge = 1;
   if (intel_pt_have_ip(decoder))
    intel_pt_set_ip(decoder);
   if (!decoder->ip)
    break;
   return 0;

  case 150:
   if (intel_pt_have_ip(decoder))
    intel_pt_set_ip(decoder);
   if (decoder->ip)
    return 0;
   break;

  case 146:
   intel_pt_calc_mtc_timestamp(decoder);
   break;

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
   break;

  case 142:
   decoder->cr3 = decoder->packet.payload & (BIT63 - 1);
   break;

  case 148:
   decoder->exec_mode = decoder->packet.payload;
   break;

  case 147:
   intel_pt_update_in_tx(decoder);
   break;

  case 144:
   return intel_pt_overflow(decoder);

  case 159:
   return intel_pt_bug(decoder);

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
   err = intel_pt_walk_psb(decoder);
   if (err)
    return err;
   if (decoder->ip) {

    decoder->state.type = 0;
    return 0;
   }
   break;

  case 131:
  case 140:
  case 128:
  case 149:
  case 143:
  case 139:
  case 138:
  case 152:
  case 151:
  case 145:
  case 137:
  case 136:
  case 158:
  case 155:
  case 157:
  case 156:
  default:
   break;
  }
 }
}
