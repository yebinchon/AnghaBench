
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_card {char* mixername; int longname; int shortname; int driver; } ;
struct snd_ac97_template {int dummy; } ;
struct snd_ac97_bus {int * codec; } ;
struct TYPE_7__ {TYPE_1__* driver; TYPE_2__* platform_data; } ;
struct platform_device {scalar_t__ id; TYPE_3__ dev; } ;
struct TYPE_6__ {scalar_t__* codec_pdata; } ;
typedef TYPE_2__ pxa2xx_audio_ops_t ;
typedef int ac97_template ;
struct TYPE_5__ {char* name; } ;


 int ENXIO ;
 int SNDRV_DEFAULT_IDX1 ;
 int SNDRV_DEFAULT_STR1 ;
 int THIS_MODULE ;
 int dev_err (TYPE_3__*,char*) ;
 int memset (struct snd_ac97_template*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct snd_card*) ;
 int pxa2xx_ac97_ac97 ;
 int pxa2xx_ac97_hw_probe (struct platform_device*) ;
 int pxa2xx_ac97_hw_remove (struct platform_device*) ;
 int pxa2xx_ac97_ops ;
 int pxa2xx_ac97_pcm_new (struct snd_card*) ;
 int snd_ac97_bus (struct snd_card*,int ,int *,int *,struct snd_ac97_bus**) ;
 int snd_ac97_dev_add_pdata (int ,scalar_t__) ;
 char* snd_ac97_get_short_name (int ) ;
 int snd_ac97_mixer (struct snd_ac97_bus*,struct snd_ac97_template*,int *) ;
 int snd_card_free (struct snd_card*) ;
 int snd_card_new (TYPE_3__*,int ,int ,int ,int ,struct snd_card**) ;
 int snd_card_register (struct snd_card*) ;
 int snprintf (int ,int,char*,char*,...) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int pxa2xx_ac97_probe(struct platform_device *dev)
{
 struct snd_card *card;
 struct snd_ac97_bus *ac97_bus;
 struct snd_ac97_template ac97_template;
 int ret;
 pxa2xx_audio_ops_t *pdata = dev->dev.platform_data;

 if (dev->id >= 0) {
  dev_err(&dev->dev, "PXA2xx has only one AC97 port.\n");
  ret = -ENXIO;
  goto err_dev;
 }

 ret = snd_card_new(&dev->dev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1,
      THIS_MODULE, 0, &card);
 if (ret < 0)
  goto err;

 strlcpy(card->driver, dev->dev.driver->name, sizeof(card->driver));

 ret = pxa2xx_ac97_pcm_new(card);
 if (ret)
  goto err;

 ret = pxa2xx_ac97_hw_probe(dev);
 if (ret)
  goto err;

 ret = snd_ac97_bus(card, 0, &pxa2xx_ac97_ops, ((void*)0), &ac97_bus);
 if (ret)
  goto err_remove;
 memset(&ac97_template, 0, sizeof(ac97_template));
 ret = snd_ac97_mixer(ac97_bus, &ac97_template, &pxa2xx_ac97_ac97);
 if (ret)
  goto err_remove;

 snprintf(card->shortname, sizeof(card->shortname),
   "%s", snd_ac97_get_short_name(pxa2xx_ac97_ac97));
 snprintf(card->longname, sizeof(card->longname),
   "%s (%s)", dev->dev.driver->name, card->mixername);

 if (pdata && pdata->codec_pdata[0])
  snd_ac97_dev_add_pdata(ac97_bus->codec[0], pdata->codec_pdata[0]);
 ret = snd_card_register(card);
 if (ret == 0) {
  platform_set_drvdata(dev, card);
  return 0;
 }

err_remove:
 pxa2xx_ac97_hw_remove(dev);
err:
 if (card)
  snd_card_free(card);
err_dev:
 return ret;
}
