
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct pcm512x_priv {int fmt; } ;


 int EINVAL ;



 int SND_SOC_DAIFMT_MASTER_MASK ;
 int pcm512x_dai_startup_master (struct snd_pcm_substream*,struct snd_soc_dai*) ;
 int pcm512x_dai_startup_slave (struct snd_pcm_substream*,struct snd_soc_dai*) ;
 struct pcm512x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm512x_dai_startup(struct snd_pcm_substream *substream,
          struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct pcm512x_priv *pcm512x = snd_soc_component_get_drvdata(component);

 switch (pcm512x->fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 130:
 case 129:
  return pcm512x_dai_startup_master(substream, dai);

 case 128:
  return pcm512x_dai_startup_slave(substream, dai);

 default:
  return -EINVAL;
 }
}
