
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
struct intel_pt_decoder {TYPE_1__ packet; scalar_t__ have_last_ip; } ;



__attribute__((used)) static inline bool intel_pt_have_ip(struct intel_pt_decoder *decoder)
{
 return decoder->packet.count &&
        (decoder->have_last_ip || decoder->packet.count == 3 ||
  decoder->packet.count == 6);
}
