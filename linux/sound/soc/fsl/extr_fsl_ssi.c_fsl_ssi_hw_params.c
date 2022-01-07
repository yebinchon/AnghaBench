
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct regmap {int dummy; } ;
struct fsl_ssi {int baudclk_streams; int i2s_net; scalar_t__ synchronous; scalar_t__ streams; int baudclk; struct regmap* regs; } ;


 int BIT (scalar_t__) ;
 int REG_SSI_SCR ;
 int REG_SSI_SxCCR (int) ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SSI_SCR_I2S_MODE_NORMAL ;
 int SSI_SCR_I2S_NET_MASK ;
 int SSI_SCR_NET ;
 int SSI_SxCCR_WL (unsigned int) ;
 int SSI_SxCCR_WL_MASK ;
 int clk_prepare_enable (int ) ;
 int fsl_ssi_is_ac97 (struct fsl_ssi*) ;
 scalar_t__ fsl_ssi_is_i2s_cbm_cfs (struct fsl_ssi*) ;
 scalar_t__ fsl_ssi_is_i2s_master (struct fsl_ssi*) ;
 int fsl_ssi_set_bclk (struct snd_pcm_substream*,struct snd_soc_dai*,struct snd_pcm_hw_params*) ;
 unsigned int params_channels (struct snd_pcm_hw_params*) ;
 unsigned int params_width (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int) ;
 struct fsl_ssi* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_ssi_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *hw_params,
        struct snd_soc_dai *dai)
{
 bool tx2, tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
 struct fsl_ssi *ssi = snd_soc_dai_get_drvdata(dai);
 struct regmap *regs = ssi->regs;
 unsigned int channels = params_channels(hw_params);
 unsigned int sample_size = params_width(hw_params);
 u32 wl = SSI_SxCCR_WL(sample_size);
 int ret;

 if (fsl_ssi_is_i2s_master(ssi)) {
  ret = fsl_ssi_set_bclk(substream, dai, hw_params);
  if (ret)
   return ret;


  if (!(ssi->baudclk_streams & BIT(substream->stream))) {
   ret = clk_prepare_enable(ssi->baudclk);
   if (ret)
    return ret;

   ssi->baudclk_streams |= BIT(substream->stream);
  }
 }







 if (ssi->streams && ssi->synchronous)
  return 0;

 if (!fsl_ssi_is_ac97(ssi)) {





  u8 i2s_net = ssi->i2s_net;


  if (fsl_ssi_is_i2s_cbm_cfs(ssi) && sample_size == 16)
   i2s_net = SSI_SCR_I2S_MODE_NORMAL | SSI_SCR_NET;


  if (channels == 1)
   i2s_net = SSI_SCR_I2S_MODE_NORMAL;

  regmap_update_bits(regs, REG_SSI_SCR,
       SSI_SCR_I2S_NET_MASK, i2s_net);
 }


 tx2 = tx || ssi->synchronous;
 regmap_update_bits(regs, REG_SSI_SxCCR(tx2), SSI_SxCCR_WL_MASK, wl);

 return 0;
}
