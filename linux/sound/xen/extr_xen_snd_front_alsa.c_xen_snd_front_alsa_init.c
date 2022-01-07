
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_snd_front_pcm_instance_info {int dummy; } ;
struct xen_front_cfg_card {int num_pcm_instances; int name_long; int name_short; int * pcm_instances; int pcm_hw; } ;
struct xen_snd_front_info {struct xen_snd_front_card_info* card_info; struct xen_front_cfg_card cfg; TYPE_1__* xb_dev; } ;
struct xen_snd_front_card_info {int num_pcm_instances; int * pcm_instances; int pcm_hw; struct snd_card* card; struct xen_snd_front_info* front_info; } ;
struct snd_card {int longname; int shortname; int driver; struct xen_snd_front_card_info* private_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int XENSND_DRIVER_NAME ;
 int dev_dbg (struct device*,char*) ;
 int * devm_kcalloc (struct device*,int,int,int ) ;
 int new_pcm_instance (struct xen_snd_front_card_info*,int *,int *) ;
 int snd_card_free (struct snd_card*) ;
 int snd_card_new (struct device*,int ,int ,int ,int,struct snd_card**) ;
 int snd_card_register (struct snd_card*) ;
 int strncpy (int ,int ,int) ;

int xen_snd_front_alsa_init(struct xen_snd_front_info *front_info)
{
 struct device *dev = &front_info->xb_dev->dev;
 struct xen_front_cfg_card *cfg = &front_info->cfg;
 struct xen_snd_front_card_info *card_info;
 struct snd_card *card;
 int ret, i;

 dev_dbg(dev, "Creating virtual sound card\n");

 ret = snd_card_new(dev, 0, XENSND_DRIVER_NAME, THIS_MODULE,
      sizeof(struct xen_snd_front_card_info), &card);
 if (ret < 0)
  return ret;

 card_info = card->private_data;
 card_info->front_info = front_info;
 front_info->card_info = card_info;
 card_info->card = card;
 card_info->pcm_instances =
   devm_kcalloc(dev, cfg->num_pcm_instances,
         sizeof(struct xen_snd_front_pcm_instance_info),
         GFP_KERNEL);
 if (!card_info->pcm_instances) {
  ret = -ENOMEM;
  goto fail;
 }

 card_info->num_pcm_instances = cfg->num_pcm_instances;
 card_info->pcm_hw = cfg->pcm_hw;

 for (i = 0; i < cfg->num_pcm_instances; i++) {
  ret = new_pcm_instance(card_info, &cfg->pcm_instances[i],
           &card_info->pcm_instances[i]);
  if (ret < 0)
   goto fail;
 }

 strncpy(card->driver, XENSND_DRIVER_NAME, sizeof(card->driver));
 strncpy(card->shortname, cfg->name_short, sizeof(card->shortname));
 strncpy(card->longname, cfg->name_long, sizeof(card->longname));

 ret = snd_card_register(card);
 if (ret < 0)
  goto fail;

 return 0;

fail:
 snd_card_free(card);
 return ret;
}
