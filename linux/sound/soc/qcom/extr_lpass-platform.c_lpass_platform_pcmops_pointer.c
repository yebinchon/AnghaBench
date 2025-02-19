
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
typedef int snd_pcm_uframes_t ;


 int DRV_NAME ;
 int LPAIF_DMABASE_REG (struct lpass_variant*,int,int) ;
 int LPAIF_DMACURR_REG (struct lpass_variant*,int,int) ;
 int bytes_to_frames (struct snd_pcm_runtime*,unsigned int) ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct lpass_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static snd_pcm_uframes_t lpass_platform_pcmops_pointer(
  struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *soc_runtime = substream->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(soc_runtime, DRV_NAME);
 struct lpass_data *drvdata = snd_soc_component_get_drvdata(component);
 struct snd_pcm_runtime *rt = substream->runtime;
 struct lpass_pcm_data *pcm_data = rt->private_data;
 struct lpass_variant *v = drvdata->variant;
 unsigned int base_addr, curr_addr;
 int ret, ch, dir = substream->stream;

 ch = pcm_data->dma_ch;

 ret = regmap_read(drvdata->lpaif_map,
   LPAIF_DMABASE_REG(v, ch, dir), &base_addr);
 if (ret) {
  dev_err(soc_runtime->dev,
   "error reading from rdmabase reg: %d\n", ret);
  return ret;
 }

 ret = regmap_read(drvdata->lpaif_map,
   LPAIF_DMACURR_REG(v, ch, dir), &curr_addr);
 if (ret) {
  dev_err(soc_runtime->dev,
   "error reading from rdmacurr reg: %d\n", ret);
  return ret;
 }

 return bytes_to_frames(substream->runtime, curr_addr - base_addr);
}
