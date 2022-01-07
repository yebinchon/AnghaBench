
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int payload; } ;
struct intel_pt_decoder {int tx_flags; TYPE_1__ packet; } ;


 int INTEL_PT_IN_TX ;

__attribute__((used)) static inline void intel_pt_update_in_tx(struct intel_pt_decoder *decoder)
{
 decoder->tx_flags = decoder->packet.payload & INTEL_PT_IN_TX;
}
