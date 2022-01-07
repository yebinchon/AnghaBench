
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int dev; TYPE_2__* card; } ;
struct snd_soc_jack {int dummy; } ;
struct cht_mc_private {int quirks; int mclk; scalar_t__ ts3a227e_present; struct snd_soc_jack jack; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int parent; } ;


 int ARRAY_SIZE (int ) ;
 int CHT_PLAT_CLK_3_HZ ;
 int QUIRK_PMC_PLT_CLK_0 ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 int cht_jack_nb ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int ) ;
 int dev_err (int ,char*,...) ;
 int hs_jack_gpios ;
 int hs_jack_pins ;
 struct cht_mc_private* snd_soc_card_get_drvdata (TYPE_2__*) ;
 int snd_soc_card_jack_new (TYPE_2__*,char*,int,struct snd_soc_jack*,int ,int ) ;
 int snd_soc_jack_add_gpiods (int ,struct snd_soc_jack*,int ,int ) ;
 int snd_soc_jack_notifier_register (struct snd_soc_jack*,int *) ;

__attribute__((used)) static int cht_codec_init(struct snd_soc_pcm_runtime *runtime)
{
 int ret;
 int jack_type;
 struct cht_mc_private *ctx = snd_soc_card_get_drvdata(runtime->card);
 struct snd_soc_jack *jack = &ctx->jack;

 if (ctx->ts3a227e_present) {




  snd_soc_jack_notifier_register(jack, &cht_jack_nb);
  return 0;
 }

 jack_type = SND_JACK_HEADPHONE | SND_JACK_MICROPHONE;

 ret = snd_soc_card_jack_new(runtime->card, "Headset Jack",
        jack_type, jack,
        hs_jack_pins, ARRAY_SIZE(hs_jack_pins));
 if (ret) {
  dev_err(runtime->dev, "Headset Jack creation failed %d\n", ret);
  return ret;
 }

 ret = snd_soc_jack_add_gpiods(runtime->card->dev->parent, jack,
          ARRAY_SIZE(hs_jack_gpios),
          hs_jack_gpios);
 if (ret) {




  dev_err(runtime->dev,
   "jack detection gpios not added, error %d\n", ret);
 }


 if (ctx->quirks & QUIRK_PMC_PLT_CLK_0)
  return 0;
 ret = clk_prepare_enable(ctx->mclk);
 if (!ret)
  clk_disable_unprepare(ctx->mclk);

 ret = clk_set_rate(ctx->mclk, CHT_PLAT_CLK_3_HZ);

 if (ret)
  dev_err(runtime->dev, "unable to set MCLK rate\n");

 return ret;
}
