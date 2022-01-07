
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {scalar_t__ tx_flags; } ;



__attribute__((used)) static inline void intel_pt_clear_tx_flags(struct intel_pt_decoder *decoder)
{
 decoder->tx_flags = 0;
}
