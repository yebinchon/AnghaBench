
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dev; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {struct lpass_pcm_data* private_data; } ;
struct lpass_variant {int dummy; } ;
struct lpass_pcm_data {int dma_ch; } ;
struct lpass_data {int lpaif_map; struct lpass_variant* variant; } ;


 int DRV_NAME ;
 int LPAIF_DMACTL_ENABLE_MASK ;
 int LPAIF_DMACTL_ENABLE_OFF ;
 int LPAIF_DMACTL_ENABLE_ON ;
 int LPAIF_DMACTL_REG (struct lpass_variant*,int,int) ;
 int LPAIF_IRQCLEAR_REG (struct lpass_variant*,int ) ;
 int LPAIF_IRQEN_REG (struct lpass_variant*,int ) ;
 int LPAIF_IRQ_ALL (int) ;
 int LPAIF_IRQ_PORT_HOST ;






 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;
 struct lpass_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int lpass_platform_pcmops_trigger(struct snd_pcm_substream *substream,
  int cmd)
{
 struct snd_soc_pcm_runtime *soc_runtime = substream->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(soc_runtime, DRV_NAME);
 struct lpass_data *drvdata = snd_soc_component_get_drvdata(component);
 struct snd_pcm_runtime *rt = substream->runtime;
 struct lpass_pcm_data *pcm_data = rt->private_data;
 struct lpass_variant *v = drvdata->variant;
 int ret, ch, dir = substream->stream;

 ch = pcm_data->dma_ch;

 switch (cmd) {
 case 130:
 case 131:
 case 132:

  ret = regmap_write(drvdata->lpaif_map,
    LPAIF_IRQCLEAR_REG(v, LPAIF_IRQ_PORT_HOST),
    LPAIF_IRQ_ALL(ch));
  if (ret) {
   dev_err(soc_runtime->dev,
    "error writing to irqclear reg: %d\n", ret);
   return ret;
  }

  ret = regmap_update_bits(drvdata->lpaif_map,
    LPAIF_IRQEN_REG(v, LPAIF_IRQ_PORT_HOST),
    LPAIF_IRQ_ALL(ch),
    LPAIF_IRQ_ALL(ch));
  if (ret) {
   dev_err(soc_runtime->dev,
    "error writing to irqen reg: %d\n", ret);
   return ret;
  }

  ret = regmap_update_bits(drvdata->lpaif_map,
    LPAIF_DMACTL_REG(v, ch, dir),
    LPAIF_DMACTL_ENABLE_MASK,
    LPAIF_DMACTL_ENABLE_ON);
  if (ret) {
   dev_err(soc_runtime->dev,
    "error writing to rdmactl reg: %d\n", ret);
   return ret;
  }
  break;
 case 129:
 case 128:
 case 133:
  ret = regmap_update_bits(drvdata->lpaif_map,
    LPAIF_DMACTL_REG(v, ch, dir),
    LPAIF_DMACTL_ENABLE_MASK,
    LPAIF_DMACTL_ENABLE_OFF);
  if (ret) {
   dev_err(soc_runtime->dev,
    "error writing to rdmactl reg: %d\n", ret);
   return ret;
  }

  ret = regmap_update_bits(drvdata->lpaif_map,
    LPAIF_IRQEN_REG(v, LPAIF_IRQ_PORT_HOST),
    LPAIF_IRQ_ALL(ch), 0);
  if (ret) {
   dev_err(soc_runtime->dev,
    "error writing to irqen reg: %d\n", ret);
   return ret;
  }
  break;
 }

 return 0;
}
