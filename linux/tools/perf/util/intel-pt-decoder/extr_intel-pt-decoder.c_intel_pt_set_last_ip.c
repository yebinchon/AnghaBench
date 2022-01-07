
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {int have_last_ip; int last_ip; int packet; } ;


 int intel_pt_calc_ip (int *,int ) ;

__attribute__((used)) static inline void intel_pt_set_last_ip(struct intel_pt_decoder *decoder)
{
 decoder->last_ip = intel_pt_calc_ip(&decoder->packet, decoder->last_ip);
 decoder->have_last_ip = 1;
}
