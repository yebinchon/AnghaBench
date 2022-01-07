
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ctl_elem_id {int name; void* iface; } ;
struct snd_card {int dev; } ;
struct snd_ac97 {int private_data; } ;
typedef int elem ;


 int ARRAY_SIZE (int *) ;
 int DRV_NAME ;
 int EIO ;
 int OLPC_GPIO_MIC_AC ;
 void* SNDRV_CTL_ELEM_IFACE_MIXER ;
 int dev_err (int ,char*) ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_request (int ,int ) ;
 int machine_is_olpc () ;
 int memset (struct snd_ctl_elem_id*,int ,int) ;
 int * olpc_cs5535audio_ctls ;
 int olpc_mic_bias (struct snd_ac97*,int ) ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (int *,int ) ;
 int snd_ctl_remove_id (struct snd_card*,struct snd_ctl_elem_id*) ;
 int strlcpy (int ,char*,int) ;

int olpc_quirks(struct snd_card *card, struct snd_ac97 *ac97)
{
 struct snd_ctl_elem_id elem;
 int i, err;

 if (!machine_is_olpc())
  return 0;

 if (gpio_request(OLPC_GPIO_MIC_AC, DRV_NAME)) {
  dev_err(card->dev, "unable to allocate MIC GPIO\n");
  return -EIO;
 }
 gpio_direction_output(OLPC_GPIO_MIC_AC, 0);


 memset(&elem, 0, sizeof(elem));
 elem.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 strlcpy(elem.name, "High Pass Filter Enable", sizeof(elem.name));
 snd_ctl_remove_id(card, &elem);


 memset(&elem, 0, sizeof(elem));
 elem.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 strlcpy(elem.name, "V_REFOUT Enable", sizeof(elem.name));
 snd_ctl_remove_id(card, &elem);


 for (i = 0; i < ARRAY_SIZE(olpc_cs5535audio_ctls); i++) {
  err = snd_ctl_add(card, snd_ctl_new1(&olpc_cs5535audio_ctls[i],
    ac97->private_data));
  if (err < 0) {
   gpio_free(OLPC_GPIO_MIC_AC);
   return err;
  }
 }


 olpc_mic_bias(ac97, 0);
 return 0;
}
