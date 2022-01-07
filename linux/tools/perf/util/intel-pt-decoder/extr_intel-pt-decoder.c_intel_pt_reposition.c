
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {int have_tma; scalar_t__ timestamp; int pkt_state; scalar_t__ ip; } ;


 int INTEL_PT_STATE_NO_PSB ;

__attribute__((used)) static void intel_pt_reposition(struct intel_pt_decoder *decoder)
{
 decoder->ip = 0;
 decoder->pkt_state = INTEL_PT_STATE_NO_PSB;
 decoder->timestamp = 0;
 decoder->have_tma = 0;
}
