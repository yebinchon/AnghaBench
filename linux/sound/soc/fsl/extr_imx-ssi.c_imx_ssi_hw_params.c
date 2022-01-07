
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct imx_ssi {int flags; int base; } ;


 int IMX_SSI_SYN ;



 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SSI_SRCCR ;
 int SSI_SRCCR_WL (int) ;
 int SSI_STCCR ;
 int SSI_STCCR_WL_MASK ;
 int params_format (struct snd_pcm_hw_params*) ;
 int readl (int) ;
 struct imx_ssi* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int writel (int,int) ;

__attribute__((used)) static int imx_ssi_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params,
        struct snd_soc_dai *cpu_dai)
{
 struct imx_ssi *ssi = snd_soc_dai_get_drvdata(cpu_dai);
 u32 reg, sccr;


 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  reg = SSI_STCCR;
 else
  reg = SSI_SRCCR;

 if (ssi->flags & IMX_SSI_SYN)
  reg = SSI_STCCR;

 sccr = readl(ssi->base + reg) & ~SSI_STCCR_WL_MASK;


 switch (params_format(params)) {
 case 130:
  sccr |= SSI_SRCCR_WL(16);
  break;
 case 129:
  sccr |= SSI_SRCCR_WL(20);
  break;
 case 128:
  sccr |= SSI_SRCCR_WL(24);
  break;
 }

 writel(sccr, ssi->base + reg);

 return 0;
}
