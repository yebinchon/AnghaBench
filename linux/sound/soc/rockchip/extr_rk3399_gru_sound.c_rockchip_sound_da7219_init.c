
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* card; struct snd_soc_dai* codec_dai; TYPE_1__** codec_dais; } ;
struct snd_soc_dai {int dev; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_8__ {int jack; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {struct snd_soc_component* component; } ;


 int DA7219_SYSCLK_MCLK ;
 int KEY_PLAYPAUSE ;
 int KEY_VOICECOMMAND ;
 int KEY_VOLUMEDOWN ;
 int KEY_VOLUMEUP ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_HEADSET ;
 int SND_JACK_LINEOUT ;
 int SND_SOC_CLOCK_IN ;
 int da7219_aad_jack_det (struct snd_soc_component*,TYPE_3__*) ;
 int dev_err (int ,char*,int) ;
 TYPE_3__ rockchip_sound_jack ;
 int snd_jack_set_key (int ,int,int ) ;
 int snd_soc_card_jack_new (TYPE_2__*,char*,int,TYPE_3__*,int *,int ) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,int ,int ) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;

__attribute__((used)) static int rockchip_sound_da7219_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_component *component = rtd->codec_dais[0]->component;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 int ret;


 ret = snd_soc_dai_set_sysclk(codec_dai, 0, 12288000,
         SND_SOC_CLOCK_IN);
 if (ret < 0) {
  dev_err(codec_dai->dev, "Init can't set codec clock in %d\n", ret);
  return ret;
 }

 ret = snd_soc_dai_set_pll(codec_dai, 0, DA7219_SYSCLK_MCLK, 0, 0);
 if (ret < 0) {
  dev_err(codec_dai->dev, "Init can't set pll sysclk mclk %d\n", ret);
  return ret;
 }


 ret = snd_soc_card_jack_new(rtd->card, "Headset Jack",
        SND_JACK_HEADSET | SND_JACK_LINEOUT |
        SND_JACK_BTN_0 | SND_JACK_BTN_1 |
        SND_JACK_BTN_2 | SND_JACK_BTN_3,
        &rockchip_sound_jack, ((void*)0), 0);

 if (ret) {
  dev_err(rtd->card->dev, "New Headset Jack failed! (%d)\n", ret);
  return ret;
 }

 snd_jack_set_key(
  rockchip_sound_jack.jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
 snd_jack_set_key(
  rockchip_sound_jack.jack, SND_JACK_BTN_1, KEY_VOLUMEUP);
 snd_jack_set_key(
  rockchip_sound_jack.jack, SND_JACK_BTN_2, KEY_VOLUMEDOWN);
 snd_jack_set_key(
  rockchip_sound_jack.jack, SND_JACK_BTN_3, KEY_VOICECOMMAND);

 da7219_aad_jack_det(component, &rockchip_sound_jack);

 return 0;
}
