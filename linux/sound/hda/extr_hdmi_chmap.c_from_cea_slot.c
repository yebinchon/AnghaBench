
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* speakers; } ;


 TYPE_1__* channel_allocations ;
 int snd_hdac_spk_to_chmap (int) ;

__attribute__((used)) static int from_cea_slot(int ordered_ca, unsigned char slot)
{
 int mask;




 if (slot >= 8)
  return 0;

 mask = channel_allocations[ordered_ca].speakers[7 - slot];

 return snd_hdac_spk_to_chmap(mask);
}
