
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct intel_pt_decoder {int pge; int continuous_period; int have_last_ip; int pkt_state; TYPE_1__ state; scalar_t__ ip; int stack; scalar_t__ last_ip; } ;


 int INTEL_PT_STATE_IN_SYNC ;
 int INTEL_PT_STATE_NO_IP ;
 int intel_pt_clear_stack (int *) ;
 int intel_pt_scan_for_psb (struct intel_pt_decoder*) ;
 int intel_pt_sync_ip (struct intel_pt_decoder*) ;
 int intel_pt_walk_psb (struct intel_pt_decoder*) ;

__attribute__((used)) static int intel_pt_sync(struct intel_pt_decoder *decoder)
{
 int err;

 decoder->pge = 0;
 decoder->continuous_period = 0;
 decoder->have_last_ip = 0;
 decoder->last_ip = 0;
 decoder->ip = 0;
 intel_pt_clear_stack(&decoder->stack);

 err = intel_pt_scan_for_psb(decoder);
 if (err)
  return err;

 decoder->have_last_ip = 1;
 decoder->pkt_state = INTEL_PT_STATE_NO_IP;

 err = intel_pt_walk_psb(decoder);
 if (err)
  return err;

 if (decoder->ip) {
  decoder->state.type = 0;
  decoder->pkt_state = INTEL_PT_STATE_IN_SYNC;
 } else {
  return intel_pt_sync_ip(decoder);
 }

 return 0;
}
