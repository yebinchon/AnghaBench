
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer_oss_slot {scalar_t__ put_recsrc; } ;
struct snd_mixer_oss_file {struct snd_mixer_oss* mixer; } ;
struct snd_mixer_oss {int mask_recsrc; struct snd_mixer_oss_slot* slots; scalar_t__ get_recsrc; scalar_t__ put_recsrc; } ;


 int EIO ;

__attribute__((used)) static int snd_mixer_oss_recmask(struct snd_mixer_oss_file *fmixer)
{
 struct snd_mixer_oss *mixer = fmixer->mixer;
 int result = 0;

 if (mixer == ((void*)0))
  return -EIO;
 if (mixer->put_recsrc && mixer->get_recsrc) {
  result = mixer->mask_recsrc;
 } else {
  struct snd_mixer_oss_slot *pslot;
  int chn;
  for (chn = 0; chn < 31; chn++) {
   pslot = &mixer->slots[chn];
   if (pslot->put_recsrc)
    result |= 1 << chn;
  }
 }
 return result;
}
