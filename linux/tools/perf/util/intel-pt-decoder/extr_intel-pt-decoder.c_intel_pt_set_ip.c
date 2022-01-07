
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {int last_ip; int ip; } ;


 int intel_pt_set_last_ip (struct intel_pt_decoder*) ;

__attribute__((used)) static inline void intel_pt_set_ip(struct intel_pt_decoder *decoder)
{
 intel_pt_set_last_ip(decoder);
 decoder->ip = decoder->last_ip;
}
