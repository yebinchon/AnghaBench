
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sspa_priv {struct snd_dmaengine_dai_dma_data* dma_params; struct ssp_device* sspa; } ;
struct ssp_device {scalar_t__ phys_base; } ;
struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_dmaengine_dai_dma_data {scalar_t__ addr; } ;


 int EINVAL ;





 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int SSPA_CTL_16_BITS ;
 int SSPA_CTL_20_BITS ;
 int SSPA_CTL_24_BITS ;
 int SSPA_CTL_32_BITS ;
 int SSPA_CTL_8_BITS ;
 int SSPA_CTL_XFRLEN1 (scalar_t__) ;
 int SSPA_CTL_XFRLEN1_MASK ;
 int SSPA_CTL_XSSZ1 (int ) ;
 int SSPA_CTL_XSSZ1_MASK ;
 int SSPA_CTL_XWDLEN1 (int ) ;
 int SSPA_CTL_XWDLEN1_MASK ;
 int SSPA_RXCTL ;
 scalar_t__ SSPA_RXD ;
 int SSPA_RXFIFO_UL ;
 int SSPA_TXCTL ;
 scalar_t__ SSPA_TXD ;
 int SSPA_TXFIFO_LL ;
 int mmp_sspa_read_reg (struct ssp_device*,int ) ;
 int mmp_sspa_write_reg (struct ssp_device*,int ,int) ;
 scalar_t__ params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 struct sspa_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_set_dma_data (struct snd_soc_dai*,struct snd_pcm_substream*,struct snd_dmaengine_dai_dma_data*) ;

__attribute__((used)) static int mmp_sspa_hw_params(struct snd_pcm_substream *substream,
          struct snd_pcm_hw_params *params,
          struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 struct sspa_priv *sspa_priv = snd_soc_dai_get_drvdata(dai);
 struct ssp_device *sspa = sspa_priv->sspa;
 struct snd_dmaengine_dai_dma_data *dma_params;
 u32 sspa_ctrl;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  sspa_ctrl = mmp_sspa_read_reg(sspa, SSPA_TXCTL);
 else
  sspa_ctrl = mmp_sspa_read_reg(sspa, SSPA_RXCTL);

 sspa_ctrl &= ~SSPA_CTL_XFRLEN1_MASK;
 sspa_ctrl |= SSPA_CTL_XFRLEN1(params_channels(params) - 1);
 sspa_ctrl &= ~SSPA_CTL_XWDLEN1_MASK;
 sspa_ctrl |= SSPA_CTL_XWDLEN1(SSPA_CTL_32_BITS);
 sspa_ctrl &= ~SSPA_CTL_XSSZ1_MASK;

 switch (params_format(params)) {
 case 128:
  sspa_ctrl |= SSPA_CTL_XSSZ1(SSPA_CTL_8_BITS);
  break;
 case 132:
  sspa_ctrl |= SSPA_CTL_XSSZ1(SSPA_CTL_16_BITS);
  break;
 case 131:
  sspa_ctrl |= SSPA_CTL_XSSZ1(SSPA_CTL_20_BITS);
  break;
 case 130:
  sspa_ctrl |= SSPA_CTL_XSSZ1(SSPA_CTL_24_BITS);
  break;
 case 129:
  sspa_ctrl |= SSPA_CTL_XSSZ1(SSPA_CTL_32_BITS);
  break;
 default:
  return -EINVAL;
 }

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  mmp_sspa_write_reg(sspa, SSPA_TXCTL, sspa_ctrl);
  mmp_sspa_write_reg(sspa, SSPA_TXFIFO_LL, 0x1);
 } else {
  mmp_sspa_write_reg(sspa, SSPA_RXCTL, sspa_ctrl);
  mmp_sspa_write_reg(sspa, SSPA_RXFIFO_UL, 0x0);
 }

 dma_params = &sspa_priv->dma_params[substream->stream];
 dma_params->addr = substream->stream == SNDRV_PCM_STREAM_PLAYBACK ?
    (sspa->phys_base + SSPA_TXD) :
    (sspa->phys_base + SSPA_RXD);
 snd_soc_dai_set_dma_data(cpu_dai, substream, dma_params);
 return 0;
}
