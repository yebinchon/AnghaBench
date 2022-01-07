
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct snd_soc_component {int dev; } ;
struct sgtl5000_priv {int sysclk; int master; } ;


 int EINVAL ;
 int SGTL5000_CHIP_ANA_POWER ;
 int SGTL5000_CHIP_CLK_CTRL ;
 int SGTL5000_CHIP_CLK_TOP_CTRL ;
 int SGTL5000_CHIP_PLL_CTRL ;
 int SGTL5000_INPUT_FREQ_DIV2 ;
 int SGTL5000_MCLK_FREQ_256FS ;
 int SGTL5000_MCLK_FREQ_384FS ;
 int SGTL5000_MCLK_FREQ_512FS ;
 int SGTL5000_MCLK_FREQ_MASK ;
 int SGTL5000_MCLK_FREQ_PLL ;
 int SGTL5000_MCLK_FREQ_SHIFT ;
 unsigned int SGTL5000_PLL_FRAC_DIV_SHIFT ;
 unsigned int SGTL5000_PLL_INT_DIV_SHIFT ;
 int SGTL5000_PLL_POWERUP ;
 int SGTL5000_RATE_MODE_DIV_1 ;
 int SGTL5000_RATE_MODE_DIV_2 ;
 int SGTL5000_RATE_MODE_DIV_4 ;
 int SGTL5000_RATE_MODE_SHIFT ;
 int SGTL5000_SYS_FS_32k ;
 int SGTL5000_SYS_FS_44_1k ;
 int SGTL5000_SYS_FS_48k ;
 int SGTL5000_SYS_FS_96k ;
 int SGTL5000_SYS_FS_SHIFT ;
 int SGTL5000_VCOAMP_POWERUP ;
 int dev_err (int ,char*,...) ;
 int do_div (int,unsigned int) ;
 struct sgtl5000_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int sgtl5000_set_clock(struct snd_soc_component *component, int frame_rate)
{
 struct sgtl5000_priv *sgtl5000 = snd_soc_component_get_drvdata(component);
 int clk_ctl = 0;
 int sys_fs;






 switch (frame_rate) {
 case 8000:
 case 16000:
  sys_fs = 32000;
  break;
 case 11025:
 case 22050:
  sys_fs = 44100;
  break;
 default:
  sys_fs = frame_rate;
  break;
 }


 switch (sys_fs / frame_rate) {
 case 4:
  clk_ctl |= SGTL5000_RATE_MODE_DIV_4 << SGTL5000_RATE_MODE_SHIFT;
  break;
 case 2:
  clk_ctl |= SGTL5000_RATE_MODE_DIV_2 << SGTL5000_RATE_MODE_SHIFT;
  break;
 case 1:
  clk_ctl |= SGTL5000_RATE_MODE_DIV_1 << SGTL5000_RATE_MODE_SHIFT;
  break;
 default:
  return -EINVAL;
 }


 switch (sys_fs) {
 case 32000:
  clk_ctl |= SGTL5000_SYS_FS_32k << SGTL5000_SYS_FS_SHIFT;
  break;
 case 44100:
  clk_ctl |= SGTL5000_SYS_FS_44_1k << SGTL5000_SYS_FS_SHIFT;
  break;
 case 48000:
  clk_ctl |= SGTL5000_SYS_FS_48k << SGTL5000_SYS_FS_SHIFT;
  break;
 case 96000:
  clk_ctl |= SGTL5000_SYS_FS_96k << SGTL5000_SYS_FS_SHIFT;
  break;
 default:
  dev_err(component->dev, "frame rate %d not supported\n",
   frame_rate);
  return -EINVAL;
 }






 switch (sgtl5000->sysclk / frame_rate) {
 case 256:
  clk_ctl |= SGTL5000_MCLK_FREQ_256FS <<
   SGTL5000_MCLK_FREQ_SHIFT;
  break;
 case 384:
  clk_ctl |= SGTL5000_MCLK_FREQ_384FS <<
   SGTL5000_MCLK_FREQ_SHIFT;
  break;
 case 512:
  clk_ctl |= SGTL5000_MCLK_FREQ_512FS <<
   SGTL5000_MCLK_FREQ_SHIFT;
  break;
 default:

  if (sgtl5000->master) {
   clk_ctl |= SGTL5000_MCLK_FREQ_PLL <<
    SGTL5000_MCLK_FREQ_SHIFT;
  } else {
   dev_err(component->dev,
    "PLL not supported in slave mode\n");
   dev_err(component->dev, "%d ratio is not supported. "
    "SYS_MCLK needs to be 256, 384 or 512 * fs\n",
    sgtl5000->sysclk / frame_rate);
   return -EINVAL;
  }
 }


 if ((clk_ctl & SGTL5000_MCLK_FREQ_MASK) == SGTL5000_MCLK_FREQ_PLL) {
  u64 out, t;
  int div2;
  int pll_ctl;
  unsigned int in, int_div, frac_div;

  if (sgtl5000->sysclk > 17000000) {
   div2 = 1;
   in = sgtl5000->sysclk / 2;
  } else {
   div2 = 0;
   in = sgtl5000->sysclk;
  }
  if (sys_fs == 44100)
   out = 180633600;
  else
   out = 196608000;
  t = do_div(out, in);
  int_div = out;
  t *= 2048;
  do_div(t, in);
  frac_div = t;
  pll_ctl = int_div << SGTL5000_PLL_INT_DIV_SHIFT |
      frac_div << SGTL5000_PLL_FRAC_DIV_SHIFT;

  snd_soc_component_write(component, SGTL5000_CHIP_PLL_CTRL, pll_ctl);
  if (div2)
   snd_soc_component_update_bits(component,
    SGTL5000_CHIP_CLK_TOP_CTRL,
    SGTL5000_INPUT_FREQ_DIV2,
    SGTL5000_INPUT_FREQ_DIV2);
  else
   snd_soc_component_update_bits(component,
    SGTL5000_CHIP_CLK_TOP_CTRL,
    SGTL5000_INPUT_FREQ_DIV2,
    0);


  snd_soc_component_update_bits(component, SGTL5000_CHIP_ANA_POWER,
   SGTL5000_PLL_POWERUP | SGTL5000_VCOAMP_POWERUP,
   SGTL5000_PLL_POWERUP | SGTL5000_VCOAMP_POWERUP);


  snd_soc_component_write(component, SGTL5000_CHIP_CLK_CTRL, clk_ctl);
 } else {

  snd_soc_component_write(component, SGTL5000_CHIP_CLK_CTRL, clk_ctl);


  snd_soc_component_update_bits(component, SGTL5000_CHIP_ANA_POWER,
   SGTL5000_PLL_POWERUP | SGTL5000_VCOAMP_POWERUP,
   0);
 }

 return 0;
}
