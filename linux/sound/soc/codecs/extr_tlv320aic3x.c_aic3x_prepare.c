
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct aic3x_priv {int slot_width; scalar_t__ dai_fmt; int tdm_delay; } ;
struct TYPE_2__ {int sample_bits; } ;


 int AIC3X_ASD_INTF_CTRLC ;
 scalar_t__ SND_SOC_DAIFMT_DSP_A ;
 scalar_t__ SND_SOC_DAIFMT_DSP_B ;
 struct aic3x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int aic3x_prepare(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct aic3x_priv *aic3x = snd_soc_component_get_drvdata(component);
 int delay = 0;
 int width = aic3x->slot_width;

 if (!width)
  width = substream->runtime->sample_bits;


 if (aic3x->dai_fmt == SND_SOC_DAIFMT_DSP_A)
  delay += (aic3x->tdm_delay*width + 1);
 else if (aic3x->dai_fmt == SND_SOC_DAIFMT_DSP_B)
  delay += aic3x->tdm_delay*width;


 snd_soc_component_write(component, AIC3X_ASD_INTF_CTRLC, delay);

 return 0;
}
