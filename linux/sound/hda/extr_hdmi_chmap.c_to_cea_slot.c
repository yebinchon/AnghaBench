
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* speakers; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* channel_allocations ;
 int snd_hdac_chmap_to_spk_mask (unsigned char) ;

__attribute__((used)) static int to_cea_slot(int ordered_ca, unsigned char pos)
{
 int mask = snd_hdac_chmap_to_spk_mask(pos);
 int i;




 if (ordered_ca >= ARRAY_SIZE(channel_allocations))
  return -1;

 if (mask) {
  for (i = 0; i < 8; i++) {
   if (channel_allocations[ordered_ca].speakers[7 - i] == mask)
    return i;
  }
 }

 return -1;
}
