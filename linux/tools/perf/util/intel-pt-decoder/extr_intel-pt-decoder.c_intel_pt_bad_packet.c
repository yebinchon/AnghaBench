
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {int have_tma; int pkt_len; int pkt_step; scalar_t__ pkt_state; } ;


 int EBADMSG ;
 scalar_t__ INTEL_PT_STATE_ERR1 ;
 scalar_t__ INTEL_PT_STATE_NO_PSB ;
 int intel_pt_clear_tx_flags (struct intel_pt_decoder*) ;
 int intel_pt_decoder_log_packet (struct intel_pt_decoder*) ;
 int intel_pt_log (char*) ;

__attribute__((used)) static int intel_pt_bad_packet(struct intel_pt_decoder *decoder)
{
 intel_pt_clear_tx_flags(decoder);
 decoder->have_tma = 0;
 decoder->pkt_len = 1;
 decoder->pkt_step = 1;
 intel_pt_decoder_log_packet(decoder);
 if (decoder->pkt_state != INTEL_PT_STATE_NO_PSB) {
  intel_pt_log("ERROR: Bad packet\n");
  decoder->pkt_state = INTEL_PT_STATE_ERR1;
 }
 return -EBADMSG;
}
