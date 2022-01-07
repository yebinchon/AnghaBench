
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int type; int payload; int count; } ;
struct intel_pt_decoder {int in_psb; int have_tma; int exec_mode; int cr3; int pge; TYPE_2__ state; int period_type; TYPE_1__ packet; } ;


 int BIT63 ;
 int EAGAIN ;
 int INTEL_PT_INSTRUCTION ;







 int INTEL_PT_PERIOD_MTC ;
 int intel_pt_calc_cbr (struct intel_pt_decoder*) ;
 int intel_pt_calc_mtc_timestamp (struct intel_pt_decoder*) ;
 int intel_pt_calc_tma (struct intel_pt_decoder*) ;
 int intel_pt_calc_tsc_timestamp (struct intel_pt_decoder*) ;
 int intel_pt_get_next_packet (struct intel_pt_decoder*) ;
 int intel_pt_log (char*) ;
 int intel_pt_overflow (struct intel_pt_decoder*) ;
 int intel_pt_set_last_ip (struct intel_pt_decoder*) ;
 int intel_pt_update_in_tx (struct intel_pt_decoder*) ;

__attribute__((used)) static int intel_pt_walk_psbend(struct intel_pt_decoder *decoder)
{
 int err;

 decoder->in_psb = 1;

 while (1) {
  err = intel_pt_get_next_packet(decoder);
  if (err)
   goto out;

  switch (decoder->packet.type) {
  case 140:
   err = 0;
   goto out;

  case 134:
  case 133:
  case 135:
  case 131:
  case 130:
  case 159:
  case 141:
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
   decoder->have_tma = 0;
   intel_pt_log("ERROR: Unexpected packet\n");
   err = -EAGAIN;
   goto out;

  case 144:
   err = intel_pt_overflow(decoder);
   goto out;

  case 129:
   intel_pt_calc_tsc_timestamp(decoder);
   break;

  case 132:
   intel_pt_calc_tma(decoder);
   break;

  case 154:
   intel_pt_calc_cbr(decoder);
   break;

  case 148:
   decoder->exec_mode = decoder->packet.payload;
   break;

  case 142:
   decoder->cr3 = decoder->packet.payload & (BIT63 - 1);
   break;

  case 150:
   decoder->pge = 1;
   if (decoder->packet.count)
    intel_pt_set_last_ip(decoder);
   break;

  case 147:
   intel_pt_update_in_tx(decoder);
   break;

  case 146:
   intel_pt_calc_mtc_timestamp(decoder);
   if (decoder->period_type == INTEL_PT_PERIOD_MTC)
    decoder->state.type |= INTEL_PT_INSTRUCTION;
   break;

  case 153:
  case 128:
  case 149:
  case 143:
  default:
   break;
  }
 }
out:
 decoder->in_psb = 0;

 return err;
}
