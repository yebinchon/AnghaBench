
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct device* dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;
struct regmap {int dummy; } ;
struct pcm512x_priv {int sclk; struct regmap* regmap; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PCM512x_ERROR_DETECT ;
 int PCM512x_IDCH ;
 int PCM512x_PLL_REF ;
 int PCM512x_SREF ;
 int PCM512x_SREF_BCK ;
 int PTR_ERR (int ) ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int constraints_slave ;
 int dev_info (struct device*,char*,int ) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,int *) ;
 struct pcm512x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm512x_dai_startup_slave(struct snd_pcm_substream *substream,
         struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct pcm512x_priv *pcm512x = snd_soc_component_get_drvdata(component);
 struct device *dev = dai->dev;
 struct regmap *regmap = pcm512x->regmap;

 if (IS_ERR(pcm512x->sclk)) {
  dev_info(dev, "No SCLK, using BCLK: %ld\n",
    PTR_ERR(pcm512x->sclk));


  regmap_update_bits(regmap, PCM512x_ERROR_DETECT,
       PCM512x_IDCH, PCM512x_IDCH);


  regmap_update_bits(regmap, PCM512x_PLL_REF,
       PCM512x_SREF, PCM512x_SREF_BCK);
 }

 return snd_pcm_hw_constraint_list(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_RATE,
       &constraints_slave);
}
