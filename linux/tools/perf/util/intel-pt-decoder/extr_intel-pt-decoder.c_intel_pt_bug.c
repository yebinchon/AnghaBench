
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {int pkt_state; } ;


 int ENOSYS ;
 int INTEL_PT_STATE_NO_PSB ;
 int intel_pt_log (char*) ;

__attribute__((used)) static int intel_pt_bug(struct intel_pt_decoder *decoder)
{
 intel_pt_log("ERROR: Internal error\n");
 decoder->pkt_state = INTEL_PT_STATE_NO_PSB;
 return -ENOSYS;
}
