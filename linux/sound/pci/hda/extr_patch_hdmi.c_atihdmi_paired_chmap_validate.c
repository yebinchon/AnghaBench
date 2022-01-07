
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_chmap {int dummy; } ;
struct hdac_cea_channel_speaker_allocation {int* speakers; } ;


 int EINVAL ;
 int atihdmi_paired_swap_fc_lfe (int) ;
 int snd_hdac_chmap_to_spk_mask (unsigned char) ;
 struct hdac_cea_channel_speaker_allocation* snd_hdac_get_ch_alloc_from_ca (int) ;

__attribute__((used)) static int atihdmi_paired_chmap_validate(struct hdac_chmap *chmap,
   int ca, int chs, unsigned char *map)
{
 struct hdac_cea_channel_speaker_allocation *cap;
 int i, j;



 cap = snd_hdac_get_ch_alloc_from_ca(ca);
 for (i = 0; i < chs; ++i) {
  int mask = snd_hdac_chmap_to_spk_mask(map[i]);
  bool ok = 0;
  bool companion_ok = 0;

  if (!mask)
   continue;

  for (j = 0 + i % 2; j < 8; j += 2) {
   int chan_idx = 7 - atihdmi_paired_swap_fc_lfe(j);
   if (cap->speakers[chan_idx] == mask) {

    ok = 1;

    if (i % 2 == 0 && i + 1 < chs) {

     int comp_chan_idx = 7 - atihdmi_paired_swap_fc_lfe(j + 1);
     int comp_mask_req = snd_hdac_chmap_to_spk_mask(map[i+1]);
     int comp_mask_act = cap->speakers[comp_chan_idx];

     if (comp_mask_req == comp_mask_act)
      companion_ok = 1;
     else
      return -EINVAL;
    }
    break;
   }
  }

  if (!ok)
   return -EINVAL;

  if (companion_ok)
   i++;
 }

 return 0;
}
