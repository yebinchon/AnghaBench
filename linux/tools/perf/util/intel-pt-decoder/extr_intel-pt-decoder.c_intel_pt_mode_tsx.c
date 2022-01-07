
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int payload; scalar_t__ type; } ;
struct intel_pt_decoder {unsigned int fup_tx_flags; int set_fup_tx_flags; int pos; TYPE_1__ packet; } ;


 unsigned int INTEL_PT_ABORT_TX ;
 scalar_t__ INTEL_PT_FUP ;
 unsigned int INTEL_PT_IN_TX ;
 int intel_pt_get_next_packet (struct intel_pt_decoder*) ;
 int intel_pt_log_at (char*,int ) ;
 int intel_pt_update_in_tx (struct intel_pt_decoder*) ;

__attribute__((used)) static int intel_pt_mode_tsx(struct intel_pt_decoder *decoder, bool *no_tip)
{
 unsigned int fup_tx_flags;
 int err;

 fup_tx_flags = decoder->packet.payload &
         (INTEL_PT_IN_TX | INTEL_PT_ABORT_TX);
 err = intel_pt_get_next_packet(decoder);
 if (err)
  return err;
 if (decoder->packet.type == INTEL_PT_FUP) {
  decoder->fup_tx_flags = fup_tx_flags;
  decoder->set_fup_tx_flags = 1;
  if (!(decoder->fup_tx_flags & INTEL_PT_ABORT_TX))
   *no_tip = 1;
 } else {
  intel_pt_log_at("ERROR: Missing FUP after MODE.TSX",
    decoder->pos);
  intel_pt_update_in_tx(decoder);
 }
 return 0;
}
