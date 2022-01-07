
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct davinci_vcif_dev {struct davinci_vc* davinci_vc; } ;
struct davinci_vc {scalar_t__ base; } ;


 scalar_t__ DAVINCI_VC_CTRL ;
 int DAVINCI_VC_CTRL_RSTADC ;
 int DAVINCI_VC_CTRL_RSTDAC ;
 int MOD_REG_BIT (int ,int ,int ) ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int readl (scalar_t__) ;
 struct davinci_vcif_dev* snd_soc_dai_get_drvdata (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void davinci_vcif_start(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct davinci_vcif_dev *davinci_vcif_dev =
   snd_soc_dai_get_drvdata(rtd->cpu_dai);
 struct davinci_vc *davinci_vc = davinci_vcif_dev->davinci_vc;
 u32 w;


 w = readl(davinci_vc->base + DAVINCI_VC_CTRL);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  MOD_REG_BIT(w, DAVINCI_VC_CTRL_RSTDAC, 0);
 else
  MOD_REG_BIT(w, DAVINCI_VC_CTRL_RSTADC, 0);

 writel(w, davinci_vc->base + DAVINCI_VC_CTRL);
}
