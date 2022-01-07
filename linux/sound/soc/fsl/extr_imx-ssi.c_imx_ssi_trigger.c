
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct imx_ssi {int flags; scalar_t__ base; } ;


 int EINVAL ;
 int IMX_SSI_DMA ;
 int IMX_SSI_USE_AC97 ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;






 scalar_t__ SSI_SCR ;
 unsigned int SSI_SCR_RE ;
 unsigned int SSI_SCR_SSIEN ;
 unsigned int SSI_SCR_TE ;
 scalar_t__ SSI_SIER ;
 unsigned int SSI_SIER_RDMAE ;
 unsigned int SSI_SIER_RFF0_EN ;
 unsigned int SSI_SIER_RIE ;
 unsigned int SSI_SIER_TDMAE ;
 unsigned int SSI_SIER_TFE0_EN ;
 unsigned int SSI_SIER_TIE ;
 unsigned int readl (scalar_t__) ;
 struct imx_ssi* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int imx_ssi_trigger(struct snd_pcm_substream *substream, int cmd,
  struct snd_soc_dai *dai)
{
 struct imx_ssi *ssi = snd_soc_dai_get_drvdata(dai);
 unsigned int sier_bits, sier;
 unsigned int scr;

 scr = readl(ssi->base + SSI_SCR);
 sier = readl(ssi->base + SSI_SIER);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  if (ssi->flags & IMX_SSI_DMA)
   sier_bits = SSI_SIER_TDMAE;
  else
   sier_bits = SSI_SIER_TIE | SSI_SIER_TFE0_EN;
 } else {
  if (ssi->flags & IMX_SSI_DMA)
   sier_bits = SSI_SIER_RDMAE;
  else
   sier_bits = SSI_SIER_RIE | SSI_SIER_RFF0_EN;
 }

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   scr |= SSI_SCR_TE;
  else
   scr |= SSI_SCR_RE;
  sier |= sier_bits;

  scr |= SSI_SCR_SSIEN;

  break;

 case 129:
 case 128:
 case 133:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   scr &= ~SSI_SCR_TE;
  else
   scr &= ~SSI_SCR_RE;
  sier &= ~sier_bits;

  if (!(scr & (SSI_SCR_TE | SSI_SCR_RE)))
   scr &= ~SSI_SCR_SSIEN;

  break;
 default:
  return -EINVAL;
 }

 if (!(ssi->flags & IMX_SSI_USE_AC97))

  writel(scr, ssi->base + SSI_SCR);

 writel(sier, ssi->base + SSI_SIER);

 return 0;
}
