
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int card; TYPE_1__* codec_dai; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct kbl_codec_private {int gpio_lo_mute; } ;
struct TYPE_6__ {int gpiod_dev; } ;
struct TYPE_5__ {struct snd_soc_component* component; } ;


 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SND_JACK_LINEOUT ;
 int SND_JACK_MICROPHONE ;
 int acpi_rt5660_gpios ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int devm_acpi_dev_add_driver_gpios (int ,int ) ;
 int devm_gpiod_get (int ,char*,int ) ;
 int lineout_jack ;
 TYPE_2__ lineout_jack_gpio ;
 int lineout_jack_pin ;
 int mic_jack ;
 TYPE_2__ mic_jack_gpio ;
 int mic_jack_pin ;
 struct kbl_codec_private* snd_soc_card_get_drvdata (int ) ;
 int snd_soc_card_jack_new (int ,char*,int ,int *,int *,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_dapm_force_enable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_jack_add_gpios (int *,int,TYPE_2__*) ;

__attribute__((used)) static int kabylake_rt5660_codec_init(struct snd_soc_pcm_runtime *rtd)
{
 int ret;
 struct kbl_codec_private *ctx = snd_soc_card_get_drvdata(rtd->card);
 struct snd_soc_component *component = rtd->codec_dai->component;
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 ret = devm_acpi_dev_add_driver_gpios(component->dev, acpi_rt5660_gpios);
 if (ret)
  dev_warn(component->dev, "Failed to add driver gpios\n");


 ctx->gpio_lo_mute = devm_gpiod_get(component->dev, "lineout-mute",
        GPIOD_OUT_HIGH);
 if (IS_ERR(ctx->gpio_lo_mute)) {
  dev_err(component->dev, "Can't find GPIO_MUTE# gpio\n");
  return PTR_ERR(ctx->gpio_lo_mute);
 }


 ret = snd_soc_card_jack_new(rtd->card, "Lineout Jack",
        SND_JACK_LINEOUT, &lineout_jack,
        &lineout_jack_pin, 1);
 if (ret)
  dev_warn(component->dev, "Can't create Lineout jack\n");
 else {
  lineout_jack_gpio.gpiod_dev = component->dev;
  ret = snd_soc_jack_add_gpios(&lineout_jack, 1,
          &lineout_jack_gpio);
  if (ret)
   dev_warn(component->dev, "Can't add Lineout jack gpio\n");
 }


 ret = snd_soc_card_jack_new(rtd->card, "Mic Jack",
        SND_JACK_MICROPHONE, &mic_jack,
        &mic_jack_pin, 1);
 if (ret)
  dev_warn(component->dev, "Can't create mic jack\n");
 else {
  mic_jack_gpio.gpiod_dev = component->dev;
  ret = snd_soc_jack_add_gpios(&mic_jack, 1, &mic_jack_gpio);
  if (ret)
   dev_warn(component->dev, "Can't add mic jack gpio\n");
 }


 snd_soc_dapm_force_enable_pin(dapm, "MICBIAS1");
 snd_soc_dapm_force_enable_pin(dapm, "BST1");
 snd_soc_dapm_force_enable_pin(dapm, "BST2");

 return 0;
}
