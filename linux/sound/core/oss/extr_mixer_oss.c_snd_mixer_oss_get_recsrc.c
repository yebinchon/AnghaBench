
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer_oss_slot {int (* get_recsrc ) (struct snd_mixer_oss_file*,struct snd_mixer_oss_slot*,int*) ;} ;
struct snd_mixer_oss_file {struct snd_mixer_oss* mixer; } ;
struct snd_mixer_oss {int (* get_recsrc ) (struct snd_mixer_oss_file*,unsigned int*) ;int oss_recsrc; struct snd_mixer_oss_slot* slots; scalar_t__ put_recsrc; } ;


 int EIO ;
 int stub1 (struct snd_mixer_oss_file*,unsigned int*) ;
 int stub2 (struct snd_mixer_oss_file*,struct snd_mixer_oss_slot*,int*) ;

__attribute__((used)) static int snd_mixer_oss_get_recsrc(struct snd_mixer_oss_file *fmixer)
{
 struct snd_mixer_oss *mixer = fmixer->mixer;
 int result = 0;

 if (mixer == ((void*)0))
  return -EIO;
 if (mixer->put_recsrc && mixer->get_recsrc) {
  int err;
  unsigned int index;
  if ((err = mixer->get_recsrc(fmixer, &index)) < 0)
   return err;
  result = 1 << index;
 } else {
  struct snd_mixer_oss_slot *pslot;
  int chn;
  for (chn = 0; chn < 31; chn++) {
   pslot = &mixer->slots[chn];
   if (pslot->get_recsrc) {
    int active = 0;
    pslot->get_recsrc(fmixer, pslot, &active);
    if (active)
     result |= 1 << chn;
   }
  }
 }
 return mixer->oss_recsrc = result;
}
