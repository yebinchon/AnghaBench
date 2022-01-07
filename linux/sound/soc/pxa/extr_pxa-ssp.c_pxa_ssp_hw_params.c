
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ssp_priv {int dai_fmt; int sysclk; struct ssp_device* ssp; } ;
struct ssp_device {TYPE_1__* pdev; int type; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_dmaengine_dai_dma_data {int dummy; } ;
struct pxa_ssp_clock_mode {int rate; int acds; int scdb; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int PXA3xx_SSP ;



 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SND_SOC_DAIFMT_FORMAT_MASK ;

 int SSACD ;
 int SSACD_ACDS (int) ;
 int SSACD_SCDB_1X ;
 int SSCR0 ;
 int SSCR0_ACS ;
 int SSCR0_DSS ;
 int SSCR0_DataSize (int) ;
 int SSCR0_ECS ;
 int SSCR0_EDSS ;
 int SSCR0_FPCKE ;
 int SSCR0_MOD ;
 int SSCR0_SSE ;
 int SSPSP ;
 int SSPSP_DMYSTOP (int) ;
 int SSPSP_DMYSTRT (int) ;
 int SSPSP_EDMYSTOP (int) ;
 int SSPSP_SFRMDLY (int) ;
 int SSPSP_SFRMWDTH (int) ;
 int SSTSA ;
 int dev_err (int *,char*) ;
 int dump_registers (struct ssp_device*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct pxa_ssp_clock_mode* pxa_ssp_clock_modes ;
 int pxa_ssp_configure_dai_fmt (struct ssp_priv*) ;
 int pxa_ssp_read_reg (struct ssp_device*,int ) ;
 int pxa_ssp_set_dma_params (struct ssp_device*,int,int,struct snd_dmaengine_dai_dma_data*) ;
 int pxa_ssp_set_pll (struct ssp_priv*,int) ;
 int pxa_ssp_set_scr (struct ssp_device*,int) ;
 int pxa_ssp_write_reg (struct ssp_device*,int ,int) ;
 int snd_pcm_format_physical_width (int) ;
 struct snd_dmaengine_dai_dma_data* snd_soc_dai_get_dma_data (struct snd_soc_dai*,struct snd_pcm_substream*) ;
 struct ssp_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int pxa_ssp_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *cpu_dai)
{
 struct ssp_priv *priv = snd_soc_dai_get_drvdata(cpu_dai);
 struct ssp_device *ssp = priv->ssp;
 int chn = params_channels(params);
 u32 sscr0, sspsp;
 int width = snd_pcm_format_physical_width(params_format(params));
 int ttsa = pxa_ssp_read_reg(ssp, SSTSA) & 0xf;
 struct snd_dmaengine_dai_dma_data *dma_data;
 int rate = params_rate(params);
 int bclk = rate * chn * (width / 8);
 int ret;

 dma_data = snd_soc_dai_get_dma_data(cpu_dai, substream);





 pxa_ssp_set_dma_params(ssp,
  ((chn == 2) && (ttsa != 1)) || (width == 32),
  substream->stream == SNDRV_PCM_STREAM_PLAYBACK, dma_data);


 if (pxa_ssp_read_reg(ssp, SSCR0) & SSCR0_SSE)
  return 0;

 ret = pxa_ssp_configure_dai_fmt(priv);
 if (ret < 0)
  return ret;


 sscr0 = pxa_ssp_read_reg(ssp, SSCR0) & ~(SSCR0_DSS | SSCR0_EDSS);


 switch (params_format(params)) {
 case 131:
  if (ssp->type == PXA3xx_SSP)
   sscr0 |= SSCR0_FPCKE;
  sscr0 |= SSCR0_DataSize(16);
  break;
 case 130:
  sscr0 |= (SSCR0_EDSS | SSCR0_DataSize(8));
  break;
 case 129:
  sscr0 |= (SSCR0_EDSS | SSCR0_DataSize(16));
  break;
 }
 pxa_ssp_write_reg(ssp, SSCR0, sscr0);

 if (sscr0 & SSCR0_ACS) {
  ret = pxa_ssp_set_pll(priv, bclk);







  if (ret < 0) {
   const struct pxa_ssp_clock_mode *m;
   int ssacd, acds;

   for (m = pxa_ssp_clock_modes; m->rate; m++) {
    if (m->rate == rate)
     break;
   }

   if (!m->rate)
    return -EINVAL;

   acds = m->acds;


   if (width == 32)
    acds--;

   ret = pxa_ssp_set_pll(priv, bclk);
   if (ret < 0)
    return ret;

   ssacd = pxa_ssp_read_reg(ssp, SSACD);
   ssacd &= ~(SSACD_ACDS(7) | SSACD_SCDB_1X);
   ssacd |= SSACD_ACDS(m->acds);
   ssacd |= m->scdb;
   pxa_ssp_write_reg(ssp, SSACD, ssacd);
  }
 } else if (sscr0 & SSCR0_ECS) {





  pxa_ssp_set_scr(ssp, bclk / rate);
 }

 switch (priv->dai_fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 128:
        sspsp = pxa_ssp_read_reg(ssp, SSPSP);

  if (((priv->sysclk / bclk) == 64) && (width == 16)) {
   if (ssp->type != PXA3xx_SSP)
    return -EINVAL;

   sspsp |= SSPSP_SFRMWDTH(width * 2);
   sspsp |= SSPSP_SFRMDLY(width * 4);
   sspsp |= SSPSP_EDMYSTOP(3);
   sspsp |= SSPSP_DMYSTOP(3);
   sspsp |= SSPSP_DMYSTRT(1);
  } else {






   sspsp |= SSPSP_SFRMWDTH(width + 1);
   sspsp |= SSPSP_SFRMDLY((width + 1) * 2);
   sspsp |= SSPSP_DMYSTRT(1);
  }

  pxa_ssp_write_reg(ssp, SSPSP, sspsp);
  break;
 default:
  break;
 }




 if ((sscr0 & SSCR0_MOD) && !ttsa) {
  dev_err(&ssp->pdev->dev, "No TDM timeslot configured\n");
  return -EINVAL;
 }

 dump_registers(ssp);

 return 0;
}
