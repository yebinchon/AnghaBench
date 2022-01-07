
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_mixer_oss {int oss_dev_alloc; struct snd_card* card; TYPE_1__* slots; int name; int reg_mutex; } ;
struct snd_card {int number; struct snd_mixer_oss* mixer_oss; scalar_t__* mixername; int dev; } ;
struct TYPE_2__ {int number; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_OSS_DEVICE_TYPE_MIXER ;
 int SNDRV_OSS_INFO_DEV_MIXERS ;
 int SNDRV_OSS_MAX_MIXERS ;
 int SND_MIXER_OSS_NOTIFY_DISCONNECT ;
 int SND_MIXER_OSS_NOTIFY_REGISTER ;
 int dev_err (int ,char*,int,int ) ;
 struct snd_mixer_oss* kcalloc (int,int,int ) ;
 int kfree (struct snd_mixer_oss*) ;
 int mutex_init (int *) ;
 int snd_mixer_oss_build (struct snd_mixer_oss*) ;
 int snd_mixer_oss_f_ops ;
 int snd_mixer_oss_free1 (struct snd_mixer_oss*) ;
 int snd_mixer_oss_proc_done (struct snd_mixer_oss*) ;
 int snd_mixer_oss_proc_init (struct snd_mixer_oss*) ;
 int snd_oss_info_register (int ,int,int ) ;
 int snd_oss_info_unregister (int ,int) ;
 int snd_register_oss_device (int ,struct snd_card*,int ,int *,struct snd_card*) ;
 int snd_unregister_oss_device (int ,struct snd_card*,int ) ;
 int snprintf (int ,int,char*,int) ;
 int strlcpy (int ,scalar_t__*,int) ;

__attribute__((used)) static int snd_mixer_oss_notify_handler(struct snd_card *card, int cmd)
{
 struct snd_mixer_oss *mixer;

 if (cmd == SND_MIXER_OSS_NOTIFY_REGISTER) {
  int idx, err;

  mixer = kcalloc(2, sizeof(*mixer), GFP_KERNEL);
  if (mixer == ((void*)0))
   return -ENOMEM;
  mutex_init(&mixer->reg_mutex);
  if ((err = snd_register_oss_device(SNDRV_OSS_DEVICE_TYPE_MIXER,
         card, 0,
         &snd_mixer_oss_f_ops, card)) < 0) {
   dev_err(card->dev,
    "unable to register OSS mixer device %i:%i\n",
    card->number, 0);
   kfree(mixer);
   return err;
  }
  mixer->oss_dev_alloc = 1;
  mixer->card = card;
  if (*card->mixername)
   strlcpy(mixer->name, card->mixername, sizeof(mixer->name));
  else
   snprintf(mixer->name, sizeof(mixer->name),
     "mixer%i", card->number);





  for (idx = 0; idx < SNDRV_OSS_MAX_MIXERS; idx++)
   mixer->slots[idx].number = idx;
  card->mixer_oss = mixer;
  snd_mixer_oss_build(mixer);
  snd_mixer_oss_proc_init(mixer);
 } else {
  mixer = card->mixer_oss;
  if (mixer == ((void*)0))
   return 0;
  if (mixer->oss_dev_alloc) {



   snd_unregister_oss_device(SNDRV_OSS_DEVICE_TYPE_MIXER, mixer->card, 0);
   mixer->oss_dev_alloc = 0;
  }
  if (cmd == SND_MIXER_OSS_NOTIFY_DISCONNECT)
   return 0;
  snd_mixer_oss_proc_done(mixer);
  return snd_mixer_oss_free1(mixer);
 }
 return 0;
}
