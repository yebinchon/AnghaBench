
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__** codec_dais; struct snd_soc_card* card; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {int dev; } ;
struct TYPE_2__ {char* name; struct snd_soc_component* component; } ;


 int RT5645_AD_STEREO_FILTER ;
 int RT5645_CLK_SEL_I2S1_ASRC ;
 int RT5645_CLK_SEL_I2S2_ASRC ;
 int RT5645_DA_STEREO_FILTER ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int mt8173_rt5650_jack ;
 int rt5645_sel_asrc_clk_src (struct snd_soc_component*,int ,int ) ;
 int rt5645_set_jack_detect (struct snd_soc_component*,int *,int *,int *) ;
 int snd_soc_card_jack_new (struct snd_soc_card*,char*,int,int *,int *,int ) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int mt8173_rt5650_init(struct snd_soc_pcm_runtime *runtime)
{
 struct snd_soc_card *card = runtime->card;
 struct snd_soc_component *component = runtime->codec_dais[0]->component;
 const char *codec_capture_dai = runtime->codec_dais[1]->name;
 int ret;

 rt5645_sel_asrc_clk_src(component,
    RT5645_DA_STEREO_FILTER,
    RT5645_CLK_SEL_I2S1_ASRC);

 if (!strcmp(codec_capture_dai, "rt5645-aif1")) {
  rt5645_sel_asrc_clk_src(component,
     RT5645_AD_STEREO_FILTER,
     RT5645_CLK_SEL_I2S1_ASRC);
 } else if (!strcmp(codec_capture_dai, "rt5645-aif2")) {
  rt5645_sel_asrc_clk_src(component,
     RT5645_AD_STEREO_FILTER,
     RT5645_CLK_SEL_I2S2_ASRC);
 } else {
  dev_warn(card->dev,
    "Only one dai codec found in DTS, enabled rt5645 AD filter\n");
  rt5645_sel_asrc_clk_src(component,
     RT5645_AD_STEREO_FILTER,
     RT5645_CLK_SEL_I2S1_ASRC);
 }


 ret = snd_soc_card_jack_new(card, "Headset Jack",
        SND_JACK_HEADPHONE | SND_JACK_MICROPHONE |
        SND_JACK_BTN_0 | SND_JACK_BTN_1 |
        SND_JACK_BTN_2 | SND_JACK_BTN_3,
        &mt8173_rt5650_jack, ((void*)0), 0);
 if (ret) {
  dev_err(card->dev, "Can't new Headset Jack %d\n", ret);
  return ret;
 }

 return rt5645_set_jack_detect(component,
          &mt8173_rt5650_jack,
          &mt8173_rt5650_jack,
          &mt8173_rt5650_jack);
}
