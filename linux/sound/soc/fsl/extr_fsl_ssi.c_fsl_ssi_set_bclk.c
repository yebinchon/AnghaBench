
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct regmap {int dummy; } ;
struct fsl_ssi {int slots; unsigned int slot_width; int baudclk_streams; int baudclk; scalar_t__ synchronous; int clk; struct regmap* regs; } ;


 int BIT (scalar_t__) ;
 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int REG_SSI_SxCCR (int) ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SSI_SxCCR_DIV2 ;
 int SSI_SxCCR_PM (int) ;
 int SSI_SxCCR_PM_MASK ;
 int SSI_SxCCR_PSR ;
 unsigned int clk_get_rate (int ) ;
 unsigned long clk_round_rate (int ,unsigned long) ;
 int clk_set_rate (int ,unsigned long) ;
 int dev_err (int ,char*) ;
 int do_div (int,unsigned int) ;
 unsigned int params_channels (struct snd_pcm_hw_params*) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 struct fsl_ssi* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_ssi_set_bclk(struct snd_pcm_substream *substream,
       struct snd_soc_dai *dai,
       struct snd_pcm_hw_params *hw_params)
{
 bool tx2, tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
 struct fsl_ssi *ssi = snd_soc_dai_get_drvdata(dai);
 struct regmap *regs = ssi->regs;
 u32 pm = 999, div2, psr, stccr, mask, afreq, factor, i;
 unsigned long clkrate, baudrate, tmprate;
 unsigned int slots = params_channels(hw_params);
 unsigned int slot_width = 32;
 u64 sub, savesub = 100000;
 unsigned int freq;
 bool baudclk_is_used;
 int ret;


 if (ssi->slots)
  slots = ssi->slots;

 if (ssi->slot_width && slots != 2)
  slot_width = ssi->slot_width;


 freq = slots * slot_width * params_rate(hw_params);


 if (IS_ERR(ssi->baudclk))
  return -EINVAL;





 if (freq * 5 > clk_get_rate(ssi->clk)) {
  dev_err(dai->dev, "bitclk > ipgclk / 5\n");
  return -EINVAL;
 }

 baudclk_is_used = ssi->baudclk_streams & ~(BIT(substream->stream));


 psr = 0;
 div2 = 0;

 factor = (div2 + 1) * (7 * psr + 1) * 2;

 for (i = 0; i < 255; i++) {
  tmprate = freq * factor * (i + 1);

  if (baudclk_is_used)
   clkrate = clk_get_rate(ssi->baudclk);
  else
   clkrate = clk_round_rate(ssi->baudclk, tmprate);

  clkrate /= factor;
  afreq = clkrate / (i + 1);

  if (freq == afreq)
   sub = 0;
  else if (freq / afreq == 1)
   sub = freq - afreq;
  else if (afreq / freq == 1)
   sub = afreq - freq;
  else
   continue;


  sub *= 100000;
  do_div(sub, freq);

  if (sub < savesub && !(i == 0 && psr == 0 && div2 == 0)) {
   baudrate = tmprate;
   savesub = sub;
   pm = i;
  }


  if (savesub == 0)
   break;
 }


 if (pm == 999) {
  dev_err(dai->dev, "failed to handle the required sysclk\n");
  return -EINVAL;
 }

 stccr = SSI_SxCCR_PM(pm + 1) | (div2 ? SSI_SxCCR_DIV2 : 0) |
  (psr ? SSI_SxCCR_PSR : 0);
 mask = SSI_SxCCR_PM_MASK | SSI_SxCCR_DIV2 | SSI_SxCCR_PSR;


 tx2 = tx || ssi->synchronous;
 regmap_update_bits(regs, REG_SSI_SxCCR(tx2), mask, stccr);

 if (!baudclk_is_used) {
  ret = clk_set_rate(ssi->baudclk, baudrate);
  if (ret) {
   dev_err(dai->dev, "failed to set baudclk rate\n");
   return -EINVAL;
  }
 }

 return 0;
}
