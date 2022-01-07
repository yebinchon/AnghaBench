
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; struct device* dev; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct pcm512x_priv {int bclk_ratio; int pll_p; int pll_j; int pll_d; int pll_r; unsigned long real_pll; int pll_in; int regmap; int sclk; int pll_out; } ;
struct device {int dummy; } ;


 int DIV_ROUND_CLOSEST (unsigned long,unsigned long) ;
 int DIV_ROUND_UP (unsigned long,int) ;
 int EINVAL ;
 int PCM512x_DAC_CLKDIV ;
 int PCM512x_DAC_REF ;
 int PCM512x_DSP_CLKDIV ;
 int PCM512x_FSSP ;
 int PCM512x_FSSP_192KHZ ;
 int PCM512x_FSSP_384KHZ ;
 int PCM512x_FSSP_48KHZ ;
 int PCM512x_FSSP_96KHZ ;
 int PCM512x_FS_SPEED_MODE ;
 int PCM512x_GPIO_DACIN ;
 int PCM512x_GREF ;
 int PCM512x_GREF_GPIO1 ;
 int PCM512x_IDAC_1 ;
 int PCM512x_IDAC_2 ;
 int PCM512x_MASTER_CLKDIV_1 ;
 int PCM512x_MASTER_CLKDIV_2 ;
 int PCM512x_NCP_CLKDIV ;
 int PCM512x_OSR_CLKDIV ;
 int PCM512x_PLL_COEFF_0 ;
 int PCM512x_PLL_COEFF_1 ;
 int PCM512x_PLL_COEFF_2 ;
 int PCM512x_PLL_COEFF_3 ;
 int PCM512x_PLL_COEFF_4 ;
 int PCM512x_SDAC ;
 int PCM512x_SDAC_GPIO ;
 int PCM512x_SDAC_SCK ;
 unsigned long clk_get_rate (int ) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,...) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 unsigned long pcm512x_dac_max (struct pcm512x_priv*,int) ;
 unsigned long pcm512x_dsp_max (struct pcm512x_priv*) ;
 int pcm512x_find_pll_coeff (struct snd_soc_dai*,unsigned long,unsigned long) ;
 unsigned long pcm512x_find_sck (struct snd_soc_dai*,unsigned long) ;
 unsigned long pcm512x_ncp_target (struct pcm512x_priv*,unsigned long) ;
 unsigned long pcm512x_pllin_dac_rate (struct snd_soc_dai*,unsigned long,unsigned long) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int) ;
 struct pcm512x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_params_to_bclk (struct snd_pcm_hw_params*) ;
 int snd_soc_params_to_frame_size (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int pcm512x_set_dividers(struct snd_soc_dai *dai,
    struct snd_pcm_hw_params *params)
{
 struct device *dev = dai->dev;
 struct snd_soc_component *component = dai->component;
 struct pcm512x_priv *pcm512x = snd_soc_component_get_drvdata(component);
 unsigned long pllin_rate = 0;
 unsigned long pll_rate;
 unsigned long sck_rate;
 unsigned long mck_rate;
 unsigned long bclk_rate;
 unsigned long sample_rate;
 unsigned long osr_rate;
 unsigned long dacsrc_rate;
 int bclk_div;
 int lrclk_div;
 int dsp_div;
 int dac_div;
 unsigned long dac_rate;
 int ncp_div;
 int osr_div;
 int ret;
 int idac;
 int fssp;
 int gpio;

 if (pcm512x->bclk_ratio > 0) {
  lrclk_div = pcm512x->bclk_ratio;
 } else {
  lrclk_div = snd_soc_params_to_frame_size(params);

  if (lrclk_div == 0) {
   dev_err(dev, "No LRCLK?\n");
   return -EINVAL;
  }
 }

 if (!pcm512x->pll_out) {
  sck_rate = clk_get_rate(pcm512x->sclk);
  bclk_rate = params_rate(params) * lrclk_div;
  bclk_div = DIV_ROUND_CLOSEST(sck_rate, bclk_rate);

  mck_rate = sck_rate;
 } else {
  ret = snd_soc_params_to_bclk(params);
  if (ret < 0) {
   dev_err(dev, "Failed to find suitable BCLK: %d\n", ret);
   return ret;
  }
  if (ret == 0) {
   dev_err(dev, "No BCLK?\n");
   return -EINVAL;
  }
  bclk_rate = ret;

  pllin_rate = clk_get_rate(pcm512x->sclk);

  sck_rate = pcm512x_find_sck(dai, bclk_rate);
  if (!sck_rate)
   return -EINVAL;
  pll_rate = 4 * sck_rate;

  ret = pcm512x_find_pll_coeff(dai, pllin_rate, pll_rate);
  if (ret != 0)
   return ret;

  ret = regmap_write(pcm512x->regmap,
       PCM512x_PLL_COEFF_0, pcm512x->pll_p - 1);
  if (ret != 0) {
   dev_err(dev, "Failed to write PLL P: %d\n", ret);
   return ret;
  }

  ret = regmap_write(pcm512x->regmap,
       PCM512x_PLL_COEFF_1, pcm512x->pll_j);
  if (ret != 0) {
   dev_err(dev, "Failed to write PLL J: %d\n", ret);
   return ret;
  }

  ret = regmap_write(pcm512x->regmap,
       PCM512x_PLL_COEFF_2, pcm512x->pll_d >> 8);
  if (ret != 0) {
   dev_err(dev, "Failed to write PLL D msb: %d\n", ret);
   return ret;
  }

  ret = regmap_write(pcm512x->regmap,
       PCM512x_PLL_COEFF_3, pcm512x->pll_d & 0xff);
  if (ret != 0) {
   dev_err(dev, "Failed to write PLL D lsb: %d\n", ret);
   return ret;
  }

  ret = regmap_write(pcm512x->regmap,
       PCM512x_PLL_COEFF_4, pcm512x->pll_r - 1);
  if (ret != 0) {
   dev_err(dev, "Failed to write PLL R: %d\n", ret);
   return ret;
  }

  mck_rate = pcm512x->real_pll;

  bclk_div = DIV_ROUND_CLOSEST(sck_rate, bclk_rate);
 }

 if (bclk_div > 128) {
  dev_err(dev, "Failed to find BCLK divider\n");
  return -EINVAL;
 }


 sample_rate = sck_rate / bclk_div / lrclk_div;
 osr_rate = 16 * sample_rate;


 dsp_div = mck_rate > pcm512x_dsp_max(pcm512x) ? 2 : 1;

 dac_rate = pcm512x_pllin_dac_rate(dai, osr_rate, pllin_rate);
 if (dac_rate) {





  dev_dbg(dev, "using pll input as dac input\n");
  ret = regmap_update_bits(pcm512x->regmap, PCM512x_DAC_REF,
      PCM512x_SDAC, PCM512x_SDAC_GPIO);
  if (ret != 0) {
   dev_err(component->dev,
    "Failed to set gpio as dacref: %d\n", ret);
   return ret;
  }

  gpio = PCM512x_GREF_GPIO1 + pcm512x->pll_in - 1;
  ret = regmap_update_bits(pcm512x->regmap, PCM512x_GPIO_DACIN,
      PCM512x_GREF, gpio);
  if (ret != 0) {
   dev_err(component->dev,
    "Failed to set gpio %d as dacin: %d\n",
    pcm512x->pll_in, ret);
   return ret;
  }

  dacsrc_rate = pllin_rate;
 } else {

  unsigned long dac_mul = pcm512x_dac_max(pcm512x, 6144000)
   / osr_rate;
  unsigned long sck_mul = sck_rate / osr_rate;

  for (; dac_mul; dac_mul--) {
   if (!(sck_mul % dac_mul))
    break;
  }
  if (!dac_mul) {
   dev_err(dev, "Failed to find DAC rate\n");
   return -EINVAL;
  }

  dac_rate = dac_mul * osr_rate;
  dev_dbg(dev, "dac_rate %lu sample_rate %lu\n",
   dac_rate, sample_rate);

  ret = regmap_update_bits(pcm512x->regmap, PCM512x_DAC_REF,
      PCM512x_SDAC, PCM512x_SDAC_SCK);
  if (ret != 0) {
   dev_err(component->dev,
    "Failed to set sck as dacref: %d\n", ret);
   return ret;
  }

  dacsrc_rate = sck_rate;
 }

 osr_div = DIV_ROUND_CLOSEST(dac_rate, osr_rate);
 if (osr_div > 128) {
  dev_err(dev, "Failed to find OSR divider\n");
  return -EINVAL;
 }

 dac_div = DIV_ROUND_CLOSEST(dacsrc_rate, dac_rate);
 if (dac_div > 128) {
  dev_err(dev, "Failed to find DAC divider\n");
  return -EINVAL;
 }
 dac_rate = dacsrc_rate / dac_div;

 ncp_div = DIV_ROUND_CLOSEST(dac_rate,
        pcm512x_ncp_target(pcm512x, dac_rate));
 if (ncp_div > 128 || dac_rate / ncp_div > 2048000) {

  ncp_div = DIV_ROUND_UP(dac_rate, 2048000);
  if (ncp_div > 128) {
   dev_err(dev, "Failed to find NCP divider\n");
   return -EINVAL;
  }
 }

 idac = mck_rate / (dsp_div * sample_rate);

 ret = regmap_write(pcm512x->regmap, PCM512x_DSP_CLKDIV, dsp_div - 1);
 if (ret != 0) {
  dev_err(dev, "Failed to write DSP divider: %d\n", ret);
  return ret;
 }

 ret = regmap_write(pcm512x->regmap, PCM512x_DAC_CLKDIV, dac_div - 1);
 if (ret != 0) {
  dev_err(dev, "Failed to write DAC divider: %d\n", ret);
  return ret;
 }

 ret = regmap_write(pcm512x->regmap, PCM512x_NCP_CLKDIV, ncp_div - 1);
 if (ret != 0) {
  dev_err(dev, "Failed to write NCP divider: %d\n", ret);
  return ret;
 }

 ret = regmap_write(pcm512x->regmap, PCM512x_OSR_CLKDIV, osr_div - 1);
 if (ret != 0) {
  dev_err(dev, "Failed to write OSR divider: %d\n", ret);
  return ret;
 }

 ret = regmap_write(pcm512x->regmap,
      PCM512x_MASTER_CLKDIV_1, bclk_div - 1);
 if (ret != 0) {
  dev_err(dev, "Failed to write BCLK divider: %d\n", ret);
  return ret;
 }

 ret = regmap_write(pcm512x->regmap,
      PCM512x_MASTER_CLKDIV_2, lrclk_div - 1);
 if (ret != 0) {
  dev_err(dev, "Failed to write LRCLK divider: %d\n", ret);
  return ret;
 }

 ret = regmap_write(pcm512x->regmap, PCM512x_IDAC_1, idac >> 8);
 if (ret != 0) {
  dev_err(dev, "Failed to write IDAC msb divider: %d\n", ret);
  return ret;
 }

 ret = regmap_write(pcm512x->regmap, PCM512x_IDAC_2, idac & 0xff);
 if (ret != 0) {
  dev_err(dev, "Failed to write IDAC lsb divider: %d\n", ret);
  return ret;
 }

 if (sample_rate <= pcm512x_dac_max(pcm512x, 48000))
  fssp = PCM512x_FSSP_48KHZ;
 else if (sample_rate <= pcm512x_dac_max(pcm512x, 96000))
  fssp = PCM512x_FSSP_96KHZ;
 else if (sample_rate <= pcm512x_dac_max(pcm512x, 192000))
  fssp = PCM512x_FSSP_192KHZ;
 else
  fssp = PCM512x_FSSP_384KHZ;
 ret = regmap_update_bits(pcm512x->regmap, PCM512x_FS_SPEED_MODE,
     PCM512x_FSSP, fssp);
 if (ret != 0) {
  dev_err(component->dev, "Failed to set fs speed: %d\n", ret);
  return ret;
 }

 dev_dbg(component->dev, "DSP divider %d\n", dsp_div);
 dev_dbg(component->dev, "DAC divider %d\n", dac_div);
 dev_dbg(component->dev, "NCP divider %d\n", ncp_div);
 dev_dbg(component->dev, "OSR divider %d\n", osr_div);
 dev_dbg(component->dev, "BCK divider %d\n", bclk_div);
 dev_dbg(component->dev, "LRCK divider %d\n", lrclk_div);
 dev_dbg(component->dev, "IDAC %d\n", idac);
 dev_dbg(component->dev, "1<<FSSP %d\n", 1 << fssp);

 return 0;
}
