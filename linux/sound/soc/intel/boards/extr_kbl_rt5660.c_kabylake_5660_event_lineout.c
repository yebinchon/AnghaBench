
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {int card; } ;
struct snd_kcontrol {int dummy; } ;
struct kbl_codec_private {int gpio_lo_mute; } ;


 int SND_SOC_DAPM_EVENT_ON (int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 struct kbl_codec_private* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static int kabylake_5660_event_lineout(struct snd_soc_dapm_widget *w,
   struct snd_kcontrol *k, int event)
{
 struct snd_soc_dapm_context *dapm = w->dapm;
 struct kbl_codec_private *priv = snd_soc_card_get_drvdata(dapm->card);

 gpiod_set_value_cansleep(priv->gpio_lo_mute,
   !(SND_SOC_DAPM_EVENT_ON(event)));

 return 0;
}
