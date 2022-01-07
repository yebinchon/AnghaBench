
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_dai** codec_dais; struct snd_soc_card* card; struct snd_soc_dai_link* dai_link; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai_link {int num_codecs; } ;
struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {int dev; } ;
struct snd_jack {int dummy; } ;
struct TYPE_3__ {struct snd_jack* jack; } ;
struct apq8016_sbc_data {int jack_setup; TYPE_1__ jack; int mic_iomux; int spkr_iomux; } ;


 int DEFAULT_MCLK_RATE ;
 int EINVAL ;
 int ENOTSUPP ;
 int KEY_PLAYPAUSE ;
 int KEY_VOICECOMMAND ;
 int KEY_VOLUMEDOWN ;
 int KEY_VOLUMEUP ;



 int MIC_CTRL_QUA_WS_SLAVE_SEL_10 ;
 int MIC_CTRL_TER_WS_SLAVE_SEL ;
 int MIC_CTRL_TLMM_SCLK_EN ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_BTN_4 ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_HEADSET ;
 int SND_SOC_CLOCK_IN ;
 int SPKR_CTL_PRI_WS_SLAVE_SEL_11 ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,int) ;
 int readl (int ) ;
 int snd_jack_set_key (struct snd_jack*,int,int ) ;
 struct apq8016_sbc_data* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_card_jack_new (struct snd_soc_card*,char*,int,TYPE_1__*,int *,int ) ;
 int snd_soc_component_set_jack (struct snd_soc_component*,TYPE_1__*,int *) ;
 int snd_soc_component_set_sysclk (struct snd_soc_component*,int ,int ,int ,int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int apq8016_sbc_dai_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 struct snd_soc_component *component;
 struct snd_soc_dai_link *dai_link = rtd->dai_link;
 struct snd_soc_card *card = rtd->card;
 struct apq8016_sbc_data *pdata = snd_soc_card_get_drvdata(card);
 int i, rval;

 switch (cpu_dai->id) {
 case 130:
  writel(readl(pdata->spkr_iomux) | SPKR_CTL_PRI_WS_SLAVE_SEL_11,
   pdata->spkr_iomux);
  break;

 case 129:

  writel(readl(pdata->mic_iomux) | MIC_CTRL_QUA_WS_SLAVE_SEL_10 |
   MIC_CTRL_TLMM_SCLK_EN,
   pdata->mic_iomux);
  break;
 case 128:
  writel(readl(pdata->mic_iomux) | MIC_CTRL_TER_WS_SLAVE_SEL |
   MIC_CTRL_TLMM_SCLK_EN,
   pdata->mic_iomux);

  break;

 default:
  dev_err(card->dev, "unsupported cpu dai configuration\n");
  return -EINVAL;

 }

 if (!pdata->jack_setup) {
  struct snd_jack *jack;

  rval = snd_soc_card_jack_new(card, "Headset Jack",
          SND_JACK_HEADSET |
          SND_JACK_HEADPHONE |
          SND_JACK_BTN_0 | SND_JACK_BTN_1 |
          SND_JACK_BTN_2 | SND_JACK_BTN_3 |
          SND_JACK_BTN_4,
          &pdata->jack, ((void*)0), 0);

  if (rval < 0) {
   dev_err(card->dev, "Unable to add Headphone Jack\n");
   return rval;
  }

  jack = pdata->jack.jack;

  snd_jack_set_key(jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
  snd_jack_set_key(jack, SND_JACK_BTN_1, KEY_VOICECOMMAND);
  snd_jack_set_key(jack, SND_JACK_BTN_2, KEY_VOLUMEUP);
  snd_jack_set_key(jack, SND_JACK_BTN_3, KEY_VOLUMEDOWN);
  pdata->jack_setup = 1;
 }

 for (i = 0 ; i < dai_link->num_codecs; i++) {
  struct snd_soc_dai *dai = rtd->codec_dais[i];

  component = dai->component;

  rval = snd_soc_component_set_sysclk(component, 0, 0, DEFAULT_MCLK_RATE,
           SND_SOC_CLOCK_IN);
  if (rval != 0 && rval != -ENOTSUPP) {
   dev_warn(card->dev, "Failed to set mclk: %d\n", rval);
   return rval;
  }
  rval = snd_soc_component_set_jack(component, &pdata->jack, ((void*)0));
  if (rval != 0 && rval != -ENOTSUPP) {
   dev_warn(card->dev, "Failed to set jack: %d\n", rval);
   return rval;
  }
 }

 return 0;
}
