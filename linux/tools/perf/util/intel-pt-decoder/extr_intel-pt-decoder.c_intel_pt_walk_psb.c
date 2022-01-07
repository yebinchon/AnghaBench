
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int type; int payload; } ;
struct intel_pt_decoder {int in_psb; int continuous_period; int pge; int cr3; int exec_mode; int have_tma; int pkt_state; int ip; TYPE_1__ packet; } ;


 int BIT63 ;
 int ENOENT ;
 int INTEL_PT_STATE_ERR3 ;
 int INTEL_PT_STATE_ERR4 ;
 int __fallthrough ;
 int intel_pt_bug (struct intel_pt_decoder*) ;
 int intel_pt_calc_cbr (struct intel_pt_decoder*) ;
 int intel_pt_calc_cyc_timestamp (struct intel_pt_decoder*) ;
 int intel_pt_calc_mtc_timestamp (struct intel_pt_decoder*) ;
 int intel_pt_calc_tma (struct intel_pt_decoder*) ;
 int intel_pt_calc_tsc_timestamp (struct intel_pt_decoder*) ;
 int intel_pt_clear_tx_flags (struct intel_pt_decoder*) ;
 int intel_pt_get_next_packet (struct intel_pt_decoder*) ;
 int intel_pt_have_ip (struct intel_pt_decoder*) ;
 int intel_pt_log (char*) ;
 int intel_pt_log_to (char*,int ) ;
 int intel_pt_overflow (struct intel_pt_decoder*) ;
 int intel_pt_set_ip (struct intel_pt_decoder*) ;
 int intel_pt_update_in_tx (struct intel_pt_decoder*) ;

__attribute__((used)) static int intel_pt_walk_psb(struct intel_pt_decoder *decoder)
{
 int err;

 decoder->in_psb = 1;

 while (1) {
  err = intel_pt_get_next_packet(decoder);
  if (err)
   goto out;

  switch (decoder->packet.type) {
  case 134:
   decoder->continuous_period = 0;
   __fallthrough;
  case 133:
  case 135:
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
   intel_pt_log("ERROR: Unexpected packet\n");
   err = -ENOENT;
   goto out;

  case 150:
   decoder->pge = 1;
   if (intel_pt_have_ip(decoder)) {
    uint64_t current_ip = decoder->ip;

    intel_pt_set_ip(decoder);
    if (current_ip)
     intel_pt_log_to("Setting IP",
       decoder->ip);
   }
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

  case 130:
   decoder->pge = 0;
   decoder->continuous_period = 0;
   intel_pt_clear_tx_flags(decoder);
   __fallthrough;

  case 131:
   decoder->have_tma = 0;
   intel_pt_log("ERROR: Unexpected packet\n");
   if (decoder->ip)
    decoder->pkt_state = INTEL_PT_STATE_ERR4;
   else
    decoder->pkt_state = INTEL_PT_STATE_ERR3;
   err = -ENOENT;
   goto out;

  case 159:
   err = intel_pt_bug(decoder);
   goto out;

  case 144:
   err = intel_pt_overflow(decoder);
   goto out;

  case 140:
   err = 0;
   goto out;

  case 141:
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
