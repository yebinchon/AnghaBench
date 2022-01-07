
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_tdm_info {int dai_wclk; scalar_t__ master; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_dmaengine_dai_dma_data {unsigned int addr_width; } ;


 int EINVAL ;
 int REG_TIMING_CTRL ;
 int REG_TS_MASK0 ;



 unsigned int TIMING_DEFAULT_WIDTH ;
 unsigned long TIMING_TS_NUM (int) ;
 unsigned long TIMING_TS_WIDTH (unsigned int) ;
 unsigned int TIMING_WIDTH_FACTOR ;
 unsigned int clk_set_rate (int ,unsigned int) ;
 int dev_err (int ,char*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 struct snd_dmaengine_dai_dma_data* snd_soc_dai_get_dma_data (struct snd_soc_dai*,struct snd_pcm_substream*) ;
 struct zx_tdm_info* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 unsigned long zx_tdm_readl (struct zx_tdm_info*,int ) ;
 int zx_tdm_writel (struct zx_tdm_info*,int ,unsigned int) ;

__attribute__((used)) static int zx_tdm_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *socdai)
{
 struct zx_tdm_info *tdm = snd_soc_dai_get_drvdata(socdai);
 struct snd_dmaengine_dai_dma_data *dma_data;
 unsigned int ts_width = TIMING_DEFAULT_WIDTH;
 unsigned int ch_num = 32;
 unsigned int mask = 0;
 unsigned int ret = 0;
 unsigned long val;

 dma_data = snd_soc_dai_get_dma_data(socdai, substream);
 dma_data->addr_width = ch_num >> 3;

 switch (params_format(params)) {
 case 129:
 case 130:
 case 128:
  ts_width = 1;
  break;
 default:
  dev_err(socdai->dev, "Unknown data format\n");
  return -EINVAL;
 }

 val = zx_tdm_readl(tdm, REG_TIMING_CTRL);
 val |= TIMING_TS_WIDTH(ts_width) | TIMING_TS_NUM(1);
 zx_tdm_writel(tdm, REG_TIMING_CTRL, val);
 zx_tdm_writel(tdm, REG_TS_MASK0, mask);

 if (tdm->master)
  ret = clk_set_rate(tdm->dai_wclk,
   params_rate(params) * TIMING_WIDTH_FACTOR * ch_num);

 return ret;
}
