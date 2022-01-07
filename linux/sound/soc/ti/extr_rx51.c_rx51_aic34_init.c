
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_card* card; } ;
struct snd_soc_card {int dev; } ;
struct rx51_audio_pdata {int jack_detection_gpio; } ;
struct TYPE_4__ {int gpio; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int SND_JACK_HEADSET ;
 int SND_JACK_VIDEOOUT ;
 int desc_to_gpio (int ) ;
 int dev_err (int ,char*) ;
 int devm_gpiod_put (int ,int ) ;
 int omap_mcbsp_st_add_controls (struct snd_soc_pcm_runtime*,int) ;
 int rx51_av_jack ;
 TYPE_1__* rx51_av_jack_gpios ;
 struct rx51_audio_pdata* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_card_jack_new (struct snd_soc_card*,char*,int,int *,int *,int ) ;
 int snd_soc_jack_add_gpios (int *,int ,TYPE_1__*) ;
 int snd_soc_limit_volume (struct snd_soc_card*,char*,int) ;

__attribute__((used)) static int rx51_aic34_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_card *card = rtd->card;
 struct rx51_audio_pdata *pdata = snd_soc_card_get_drvdata(card);
 int err;

 snd_soc_limit_volume(card, "TPA6130A2 Headphone Playback Volume", 42);

 err = omap_mcbsp_st_add_controls(rtd, 2);
 if (err < 0) {
  dev_err(card->dev, "Failed to add MCBSP controls\n");
  return err;
 }


 err = snd_soc_card_jack_new(rtd->card, "AV Jack",
        SND_JACK_HEADSET | SND_JACK_VIDEOOUT,
        &rx51_av_jack, ((void*)0), 0);
 if (err) {
  dev_err(card->dev, "Failed to add AV Jack\n");
  return err;
 }


 rx51_av_jack_gpios[0].gpio = desc_to_gpio(pdata->jack_detection_gpio);
 devm_gpiod_put(card->dev, pdata->jack_detection_gpio);

 err = snd_soc_jack_add_gpios(&rx51_av_jack,
         ARRAY_SIZE(rx51_av_jack_gpios),
         rx51_av_jack_gpios);
 if (err) {
  dev_err(card->dev, "Failed to add GPIOs\n");
  return err;
 }

 return err;
}
