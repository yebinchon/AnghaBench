
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer_oss_slot {int (* get_recsrc ) (struct snd_mixer_oss_file*,struct snd_mixer_oss_slot*,int*) ;int (* put_recsrc ) (struct snd_mixer_oss_file*,struct snd_mixer_oss_slot*,int) ;} ;
struct snd_mixer_oss_file {struct snd_mixer_oss* mixer; } ;
struct snd_mixer_oss {int oss_recsrc; struct snd_mixer_oss_slot* slots; int (* get_recsrc ) (struct snd_mixer_oss_file*,unsigned int*) ;int (* put_recsrc ) (struct snd_mixer_oss_file*,int ) ;} ;


 int EIO ;
 int ffz (int) ;
 int stub1 (struct snd_mixer_oss_file*,int ) ;
 int stub2 (struct snd_mixer_oss_file*,unsigned int*) ;
 int stub3 (struct snd_mixer_oss_file*,struct snd_mixer_oss_slot*,int) ;
 int stub4 (struct snd_mixer_oss_file*,struct snd_mixer_oss_slot*,int*) ;

__attribute__((used)) static int snd_mixer_oss_set_recsrc(struct snd_mixer_oss_file *fmixer, int recsrc)
{
 struct snd_mixer_oss *mixer = fmixer->mixer;
 struct snd_mixer_oss_slot *pslot;
 int chn, active;
 unsigned int index;
 int result = 0;

 if (mixer == ((void*)0))
  return -EIO;
 if (mixer->get_recsrc && mixer->put_recsrc) {
  if (recsrc & ~mixer->oss_recsrc)
   recsrc &= ~mixer->oss_recsrc;
  mixer->put_recsrc(fmixer, ffz(~recsrc));
  mixer->get_recsrc(fmixer, &index);
  result = 1 << index;
 }
 for (chn = 0; chn < 31; chn++) {
  pslot = &mixer->slots[chn];
  if (pslot->put_recsrc) {
   active = (recsrc & (1 << chn)) ? 1 : 0;
   pslot->put_recsrc(fmixer, pslot, active);
  }
 }
 if (! result) {
  for (chn = 0; chn < 31; chn++) {
   pslot = &mixer->slots[chn];
   if (pslot->get_recsrc) {
    active = 0;
    pslot->get_recsrc(fmixer, pslot, &active);
    if (active)
     result |= 1 << chn;
   }
  }
 }
 return result;
}
