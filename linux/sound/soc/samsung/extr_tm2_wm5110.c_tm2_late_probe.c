
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tm2_machine_priv {int component; } ;
struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dev; int component; } ;
struct snd_soc_card {TYPE_1__* dai_link; } ;
struct TYPE_4__ {int dlc; } ;
struct TYPE_3__ {int name; } ;


 int ARIZONA_CLK_ASYNCCLK ;
 int ARIZONA_CLK_SYSCLK ;
 int ARRAY_SIZE (unsigned int*) ;
 int ENODEV ;
 size_t TM2_DAI_AIF1 ;
 size_t TM2_DAI_AIF2 ;
 int dev_err (int ,char*,int) ;
 struct tm2_machine_priv* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_dai_set_channel_map (struct snd_soc_dai*,int ,unsigned int*,int ,int *) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int ,int ) ;
 int snd_soc_dai_set_tdm_slot (struct snd_soc_dai*,int,int,int,int) ;
 struct snd_soc_dai* snd_soc_find_dai (int *) ;
 struct snd_soc_pcm_runtime* snd_soc_get_pcm_runtime (struct snd_soc_card*,int ) ;
 TYPE_2__ tm2_speaker_amp_dev ;

__attribute__((used)) static int tm2_late_probe(struct snd_soc_card *card)
{
 struct tm2_machine_priv *priv = snd_soc_card_get_drvdata(card);
 unsigned int ch_map[] = { 0, 1 };
 struct snd_soc_dai *amp_pdm_dai;
 struct snd_soc_pcm_runtime *rtd;
 struct snd_soc_dai *aif1_dai;
 struct snd_soc_dai *aif2_dai;
 int ret;

 rtd = snd_soc_get_pcm_runtime(card, card->dai_link[TM2_DAI_AIF1].name);
 aif1_dai = rtd->codec_dai;
 priv->component = rtd->codec_dai->component;

 ret = snd_soc_dai_set_sysclk(aif1_dai, ARIZONA_CLK_SYSCLK, 0, 0);
 if (ret < 0) {
  dev_err(aif1_dai->dev, "Failed to set SYSCLK: %d\n", ret);
  return ret;
 }

 rtd = snd_soc_get_pcm_runtime(card, card->dai_link[TM2_DAI_AIF2].name);
 aif2_dai = rtd->codec_dai;

 ret = snd_soc_dai_set_sysclk(aif2_dai, ARIZONA_CLK_ASYNCCLK, 0, 0);
 if (ret < 0) {
  dev_err(aif2_dai->dev, "Failed to set ASYNCCLK: %d\n", ret);
  return ret;
 }

 amp_pdm_dai = snd_soc_find_dai(&tm2_speaker_amp_dev.dlc);
 if (!amp_pdm_dai)
  return -ENODEV;


 ret = snd_soc_dai_set_channel_map(amp_pdm_dai, ARRAY_SIZE(ch_map),
       ch_map, 0, ((void*)0));
 if (ret < 0)
  return ret;

 ret = snd_soc_dai_set_tdm_slot(amp_pdm_dai, 0x3, 0x0, 2, 16);
 if (ret < 0)
  return ret;

 return 0;
}
