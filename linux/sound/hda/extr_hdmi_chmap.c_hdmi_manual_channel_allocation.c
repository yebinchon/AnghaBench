
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channels; int spk_mask; int ca_index; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* channel_allocations ;
 int snd_hdac_chmap_to_spk_mask (unsigned char) ;

__attribute__((used)) static int hdmi_manual_channel_allocation(int chs, unsigned char *map)
{
 int i, spks = 0, spk_mask = 0;

 for (i = 0; i < chs; i++) {
  int mask = snd_hdac_chmap_to_spk_mask(map[i]);

  if (mask) {
   spk_mask |= mask;
   spks++;
  }
 }

 for (i = 0; i < ARRAY_SIZE(channel_allocations); i++) {
  if ((chs == channel_allocations[i].channels ||
       spks == channel_allocations[i].channels) &&
      (spk_mask & channel_allocations[i].spk_mask) ==
    channel_allocations[i].spk_mask)
   return channel_allocations[i].ca_index;
 }
 return -1;
}
