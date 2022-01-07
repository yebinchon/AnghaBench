
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_card* card; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_card {int dev; struct snd_soc_dapm_context dapm; } ;
struct omap_twl4030 {scalar_t__ jack_detect; int hs_jack; } ;
struct omap_tw4030_pdata {int has_linein; int has_digimic1; int has_digimic0; int has_carkitmic; int has_hsmic; int has_submic; int has_mainmic; int has_carkit; int has_predriv; int has_hs; int has_hf; int has_ear; int custom_routing; } ;
struct TYPE_6__ {scalar_t__ gpio; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int SND_JACK_HEADSET ;
 struct omap_tw4030_pdata* dev_get_platdata (int ) ;
 TYPE_1__* hs_jack_gpios ;
 TYPE_1__* hs_jack_pins ;
 struct omap_twl4030* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_card_jack_new (struct snd_soc_card*,char*,int ,int *,TYPE_1__*,int ) ;
 int snd_soc_jack_add_gpios (int *,int ,TYPE_1__*) ;
 int twl4030_disconnect_pin (struct snd_soc_dapm_context*,int ,char*) ;

__attribute__((used)) static int omap_twl4030_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_card *card = rtd->card;
 struct snd_soc_dapm_context *dapm = &card->dapm;
 struct omap_tw4030_pdata *pdata = dev_get_platdata(card->dev);
 struct omap_twl4030 *priv = snd_soc_card_get_drvdata(card);
 int ret = 0;


 if (priv->jack_detect > 0) {
  hs_jack_gpios[0].gpio = priv->jack_detect;

  ret = snd_soc_card_jack_new(rtd->card, "Headset Jack",
         SND_JACK_HEADSET, &priv->hs_jack,
         hs_jack_pins,
         ARRAY_SIZE(hs_jack_pins));
  if (ret)
   return ret;

  ret = snd_soc_jack_add_gpios(&priv->hs_jack,
          ARRAY_SIZE(hs_jack_gpios),
          hs_jack_gpios);
  if (ret)
   return ret;
 }





 if (!pdata || !pdata->custom_routing)
  return ret;


 twl4030_disconnect_pin(dapm, pdata->has_ear, "Earpiece Spk");
 twl4030_disconnect_pin(dapm, pdata->has_hf, "Handsfree Spk");
 twl4030_disconnect_pin(dapm, pdata->has_hs, "Headset Stereophone");
 twl4030_disconnect_pin(dapm, pdata->has_predriv, "Ext Spk");
 twl4030_disconnect_pin(dapm, pdata->has_carkit, "Carkit Spk");

 twl4030_disconnect_pin(dapm, pdata->has_mainmic, "Main Mic");
 twl4030_disconnect_pin(dapm, pdata->has_submic, "Sub Mic");
 twl4030_disconnect_pin(dapm, pdata->has_hsmic, "Headset Mic");
 twl4030_disconnect_pin(dapm, pdata->has_carkitmic, "Carkit Mic");
 twl4030_disconnect_pin(dapm, pdata->has_digimic0, "Digital0 Mic");
 twl4030_disconnect_pin(dapm, pdata->has_digimic1, "Digital1 Mic");
 twl4030_disconnect_pin(dapm, pdata->has_linein, "Line In");

 return ret;
}
