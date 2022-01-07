
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int card; TYPE_1__* codec_dai; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct bdw_rt5677_priv {struct snd_soc_component* component; int gpio_hp_en; } ;
struct TYPE_6__ {int gpiod_dev; } ;
struct TYPE_5__ {struct snd_soc_component* component; } ;


 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RT5677_AD_STEREO1_FILTER ;
 int RT5677_CLK_SEL_I2S1_ASRC ;
 int RT5677_DA_STEREO_FILTER ;
 int RT5677_I2S1_SOURCE ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 int bdw_rt5677_gpios ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int devm_acpi_dev_add_driver_gpios (int ,int ) ;
 int devm_gpiod_get (int ,char*,int ) ;
 int headphone_jack ;
 TYPE_2__ headphone_jack_gpio ;
 int headphone_jack_pin ;
 int mic_jack ;
 TYPE_2__ mic_jack_gpio ;
 int mic_jack_pin ;
 int rt5677_sel_asrc_clk_src (struct snd_soc_component*,int,int ) ;
 struct bdw_rt5677_priv* snd_soc_card_get_drvdata (int ) ;
 int snd_soc_card_jack_new (int ,char*,int ,int *,int *,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_dapm_force_enable_pin (struct snd_soc_dapm_context*,char*) ;
 scalar_t__ snd_soc_jack_add_gpios (int *,int,TYPE_2__*) ;

__attribute__((used)) static int bdw_rt5677_init(struct snd_soc_pcm_runtime *rtd)
{
 struct bdw_rt5677_priv *bdw_rt5677 =
   snd_soc_card_get_drvdata(rtd->card);
 struct snd_soc_component *component = rtd->codec_dai->component;
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 int ret;

 ret = devm_acpi_dev_add_driver_gpios(component->dev, bdw_rt5677_gpios);
 if (ret)
  dev_warn(component->dev, "Failed to add driver gpios\n");




 rt5677_sel_asrc_clk_src(component, RT5677_DA_STEREO_FILTER |
   RT5677_AD_STEREO1_FILTER | RT5677_I2S1_SOURCE,
   RT5677_CLK_SEL_I2S1_ASRC);


 bdw_rt5677->gpio_hp_en = devm_gpiod_get(component->dev, "headphone-enable",
      GPIOD_OUT_LOW);
 if (IS_ERR(bdw_rt5677->gpio_hp_en)) {
  dev_err(component->dev, "Can't find HP_AMP_SHDN_L gpio\n");
  return PTR_ERR(bdw_rt5677->gpio_hp_en);
 }


 if (!snd_soc_card_jack_new(rtd->card, "Headphone Jack",
   SND_JACK_HEADPHONE, &headphone_jack,
   &headphone_jack_pin, 1)) {
  headphone_jack_gpio.gpiod_dev = component->dev;
  if (snd_soc_jack_add_gpios(&headphone_jack, 1,
    &headphone_jack_gpio))
   dev_err(component->dev, "Can't add headphone jack gpio\n");
 } else {
  dev_err(component->dev, "Can't create headphone jack\n");
 }


 if (!snd_soc_card_jack_new(rtd->card, "Mic Jack",
   SND_JACK_MICROPHONE, &mic_jack,
   &mic_jack_pin, 1)) {
  mic_jack_gpio.gpiod_dev = component->dev;
  if (snd_soc_jack_add_gpios(&mic_jack, 1, &mic_jack_gpio))
   dev_err(component->dev, "Can't add mic jack gpio\n");
 } else {
  dev_err(component->dev, "Can't create mic jack\n");
 }
 bdw_rt5677->component = component;

 snd_soc_dapm_force_enable_pin(dapm, "MICBIAS1");
 return 0;
}
