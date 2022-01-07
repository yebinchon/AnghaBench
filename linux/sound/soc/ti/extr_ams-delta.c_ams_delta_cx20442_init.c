
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; struct snd_soc_card* card; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_dai {TYPE_1__* driver; int component; } ;
struct snd_soc_card {int dev; struct snd_soc_dapm_context dapm; } ;
struct TYPE_4__ {int shutdown; int startup; } ;
struct TYPE_3__ {int * ops; } ;


 int ARRAY_SIZE (int ) ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int N_V253 ;
 int SND_JACK_HEADSET ;
 int ams_delta_dai_ops ;
 int ams_delta_hook_switch ;
 int ams_delta_hook_switch_gpios ;
 TYPE_2__ ams_delta_ops ;
 int ams_delta_shutdown ;
 int ams_delta_startup ;
 int cx20442_codec ;
 int cx81801_ops ;
 int dev_warn (int ,char*) ;
 int devm_gpiod_get (int ,char*,int ) ;
 int gpiod_modem_codec ;
 int snd_soc_card_jack_new (struct snd_soc_card*,char*,int ,int *,int *,int ) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_jack_add_gpiods (int ,int *,int ,int ) ;
 int tty_register_ldisc (int ,int *) ;

__attribute__((used)) static int ams_delta_cx20442_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_card *card = rtd->card;
 struct snd_soc_dapm_context *dapm = &card->dapm;
 int ret;



 cx20442_codec = rtd->codec_dai->component;



 ret = snd_soc_card_jack_new(card, "hook_switch", SND_JACK_HEADSET,
        &ams_delta_hook_switch, ((void*)0), 0);
 if (ret)
  dev_warn(card->dev,
    "Failed to allocate resources for hook switch, "
    "will continue without one.\n");
 else {
  ret = snd_soc_jack_add_gpiods(card->dev, &ams_delta_hook_switch,
     ARRAY_SIZE(ams_delta_hook_switch_gpios),
     ams_delta_hook_switch_gpios);
  if (ret)
   dev_warn(card->dev,
    "Failed to set up hook switch GPIO line, "
    "will continue with hook switch inactive.\n");
 }

 gpiod_modem_codec = devm_gpiod_get(card->dev, "modem_codec",
        GPIOD_OUT_HIGH);
 if (IS_ERR(gpiod_modem_codec)) {
  dev_warn(card->dev, "Failed to obtain modem_codec GPIO\n");
  return 0;
 }


 if (!codec_dai->driver->ops) {
  codec_dai->driver->ops = &ams_delta_dai_ops;
 } else {
  ams_delta_ops.startup = ams_delta_startup;
  ams_delta_ops.shutdown = ams_delta_shutdown;
 }


 ret = tty_register_ldisc(N_V253, &cx81801_ops);
 if (ret) {
  dev_warn(card->dev,
    "Failed to register line discipline, "
    "will continue without any controls.\n");
  return 0;
 }


 snd_soc_dapm_disable_pin(dapm, "Mouthpiece");
 snd_soc_dapm_disable_pin(dapm, "Speaker");
 snd_soc_dapm_disable_pin(dapm, "AGCIN");
 snd_soc_dapm_disable_pin(dapm, "AGCOUT");

 return 0;
}
