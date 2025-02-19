
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_3__* dai_link; } ;
struct snd_soc_dai {TYPE_2__* driver; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct rk_i2s_dev {int regmap; TYPE_1__* pins; int grf; int dev; int mclk; scalar_t__ is_master_mode; } ;
struct TYPE_6__ {scalar_t__ symmetric_rates; } ;
struct TYPE_5__ {scalar_t__ symmetric_rates; } ;
struct TYPE_4__ {unsigned int shift; int reg_offset; } ;


 int EINVAL ;
 unsigned int I2S_CHN_2 ;



 int I2S_CKR ;
 unsigned int I2S_CKR_MDIV (unsigned int) ;
 unsigned int I2S_CKR_MDIV_MASK ;
 unsigned int I2S_CKR_RSD (unsigned int) ;
 unsigned int I2S_CKR_RSD_MASK ;
 unsigned int I2S_CKR_TRCM_MASK ;
 unsigned int I2S_CKR_TRCM_TXONLY ;
 unsigned int I2S_CKR_TRCM_TXRX ;
 unsigned int I2S_CKR_TSD (unsigned int) ;
 unsigned int I2S_CKR_TSD_MASK ;
 int I2S_DMACR ;
 unsigned int I2S_DMACR_RDL (int) ;
 unsigned int I2S_DMACR_RDL_MASK ;
 unsigned int I2S_DMACR_TDL (int) ;
 unsigned int I2S_DMACR_TDL_MASK ;
 unsigned int I2S_IO_2CH_OUT_8CH_IN ;
 unsigned int I2S_IO_4CH_OUT_6CH_IN ;
 unsigned int I2S_IO_6CH_OUT_4CH_IN ;
 unsigned int I2S_IO_8CH_OUT_2CH_IN ;
 int I2S_IO_DIRECTION_MASK ;
 int I2S_RXCR ;
 unsigned int I2S_RXCR_CSR_MASK ;
 unsigned int I2S_RXCR_VDW_MASK ;
 int I2S_TXCR ;
 unsigned int I2S_TXCR_CSR_MASK ;
 unsigned int I2S_TXCR_VDW (int) ;
 unsigned int I2S_TXCR_VDW_MASK ;
 int IS_ERR (int ) ;





 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 unsigned int clk_get_rate (int ) ;
 int dev_err (int ,char*,int) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct rk_i2s_dev* to_info (struct snd_soc_dai*) ;

__attribute__((used)) static int rockchip_i2s_hw_params(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *params,
      struct snd_soc_dai *dai)
{
 struct rk_i2s_dev *i2s = to_info(dai);
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 unsigned int val = 0;
 unsigned int mclk_rate, bclk_rate, div_bclk, div_lrck;

 if (i2s->is_master_mode) {
  mclk_rate = clk_get_rate(i2s->mclk);
  bclk_rate = 2 * 32 * params_rate(params);
  if (bclk_rate && mclk_rate % bclk_rate)
   return -EINVAL;

  div_bclk = mclk_rate / bclk_rate;
  div_lrck = bclk_rate / params_rate(params);
  regmap_update_bits(i2s->regmap, I2S_CKR,
       I2S_CKR_MDIV_MASK,
       I2S_CKR_MDIV(div_bclk));

  regmap_update_bits(i2s->regmap, I2S_CKR,
       I2S_CKR_TSD_MASK |
       I2S_CKR_RSD_MASK,
       I2S_CKR_TSD(div_lrck) |
       I2S_CKR_RSD(div_lrck));
 }

 switch (params_format(params)) {
 case 128:
  val |= I2S_TXCR_VDW(8);
  break;
 case 132:
  val |= I2S_TXCR_VDW(16);
  break;
 case 131:
  val |= I2S_TXCR_VDW(20);
  break;
 case 130:
  val |= I2S_TXCR_VDW(24);
  break;
 case 129:
  val |= I2S_TXCR_VDW(32);
  break;
 default:
  return -EINVAL;
 }

 switch (params_channels(params)) {
 case 8:
  val |= 133;
  break;
 case 6:
  val |= 134;
  break;
 case 4:
  val |= 135;
  break;
 case 2:
  val |= I2S_CHN_2;
  break;
 default:
  dev_err(i2s->dev, "invalid channel: %d\n",
   params_channels(params));
  return -EINVAL;
 }

 if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
  regmap_update_bits(i2s->regmap, I2S_RXCR,
       I2S_RXCR_VDW_MASK | I2S_RXCR_CSR_MASK,
       val);
 else
  regmap_update_bits(i2s->regmap, I2S_TXCR,
       I2S_TXCR_VDW_MASK | I2S_TXCR_CSR_MASK,
       val);

 if (!IS_ERR(i2s->grf) && i2s->pins) {
  regmap_read(i2s->regmap, I2S_TXCR, &val);
  val &= I2S_TXCR_CSR_MASK;

  switch (val) {
  case 135:
   val = I2S_IO_4CH_OUT_6CH_IN;
   break;
  case 134:
   val = I2S_IO_6CH_OUT_4CH_IN;
   break;
  case 133:
   val = I2S_IO_8CH_OUT_2CH_IN;
   break;
  default:
   val = I2S_IO_2CH_OUT_8CH_IN;
   break;
  }

  val <<= i2s->pins->shift;
  val |= (I2S_IO_DIRECTION_MASK << i2s->pins->shift) << 16;
  regmap_write(i2s->grf, i2s->pins->reg_offset, val);
 }

 regmap_update_bits(i2s->regmap, I2S_DMACR, I2S_DMACR_TDL_MASK,
      I2S_DMACR_TDL(16));
 regmap_update_bits(i2s->regmap, I2S_DMACR, I2S_DMACR_RDL_MASK,
      I2S_DMACR_RDL(16));

 val = I2S_CKR_TRCM_TXRX;
 if (dai->driver->symmetric_rates && rtd->dai_link->symmetric_rates)
  val = I2S_CKR_TRCM_TXONLY;

 regmap_update_bits(i2s->regmap, I2S_CKR,
      I2S_CKR_TRCM_MASK,
      val);
 return 0;
}
