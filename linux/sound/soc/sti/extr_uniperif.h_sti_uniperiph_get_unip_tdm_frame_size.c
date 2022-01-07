
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slots; int slot_width; } ;
struct uniperif {TYPE_1__ tdm_slot; } ;



__attribute__((used)) static inline int sti_uniperiph_get_unip_tdm_frame_size(struct uniperif *uni)
{
 return (uni->tdm_slot.slots * uni->tdm_slot.slot_width / 8);
}
