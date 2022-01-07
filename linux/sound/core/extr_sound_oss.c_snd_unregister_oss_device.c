
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_minor {int dummy; } ;
struct snd_card {scalar_t__ number; } ;


 int ENOENT ;
 int SNDRV_MINOR_OSS (int,int ) ;
 int SNDRV_MINOR_OSS_AUDIO ;
 int SNDRV_MINOR_OSS_CARD (int) ;
 int SNDRV_MINOR_OSS_DEVICE (int) ;
 scalar_t__ SNDRV_MINOR_OSS_DEVICES ;
 int SNDRV_MINOR_OSS_DMMIDI ;
 int SNDRV_MINOR_OSS_DMMIDI1 ;



 int kfree (struct snd_minor*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_oss_kernel_minor (int,struct snd_card*,int) ;
 struct snd_minor** snd_oss_minors ;
 int sound_oss_mutex ;
 int unregister_sound_special (int) ;

int snd_unregister_oss_device(int type, struct snd_card *card, int dev)
{
 int minor = snd_oss_kernel_minor(type, card, dev);
 int cidx = SNDRV_MINOR_OSS_CARD(minor);
 int track2 = -1;
 struct snd_minor *mptr;

 if (card && card->number >= SNDRV_MINOR_OSS_DEVICES)
  return 0;
 if (minor < 0)
  return minor;
 mutex_lock(&sound_oss_mutex);
 mptr = snd_oss_minors[minor];
 if (mptr == ((void*)0)) {
  mutex_unlock(&sound_oss_mutex);
  return -ENOENT;
 }
 unregister_sound_special(minor);
 switch (SNDRV_MINOR_OSS_DEVICE(minor)) {
 case 128:
  track2 = SNDRV_MINOR_OSS(cidx, SNDRV_MINOR_OSS_AUDIO);
  break;
 case 130:
  track2 = SNDRV_MINOR_OSS(cidx, SNDRV_MINOR_OSS_DMMIDI);
  break;
 case 129:
  track2 = SNDRV_MINOR_OSS(cidx, SNDRV_MINOR_OSS_DMMIDI1);
  break;
 }
 if (track2 >= 0) {
  unregister_sound_special(track2);
  snd_oss_minors[track2] = ((void*)0);
 }
 snd_oss_minors[minor] = ((void*)0);
 mutex_unlock(&sound_oss_mutex);
 kfree(mptr);
 return 0;
}
