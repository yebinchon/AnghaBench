
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_chmap {int dummy; } ;
struct hdac_cea_channel_speaker_allocation {int* speakers; } ;


 unsigned int SNDRV_CHMAP_NA ;
 int WARN_ON (int) ;
 int atihdmi_paired_swap_fc_lfe (int) ;
 unsigned int snd_hdac_spk_to_chmap (int) ;

__attribute__((used)) static void atihdmi_paired_cea_alloc_to_tlv_chmap(struct hdac_chmap *hchmap,
  struct hdac_cea_channel_speaker_allocation *cap,
  unsigned int *chmap, int channels)
{

 int count = 0;
 int c;

 for (c = 7; c >= 0; c--) {
  int chan = 7 - atihdmi_paired_swap_fc_lfe(7 - c);
  int spk = cap->speakers[chan];
  if (!spk) {

   if (cap->speakers[chan + (chan % 2 ? -1 : 1)])
    chmap[count++] = SNDRV_CHMAP_NA;

   continue;
  }

  chmap[count++] = snd_hdac_spk_to_chmap(spk);
 }

 WARN_ON(count != channels);
}
