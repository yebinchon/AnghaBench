
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_i2s_info {int lrclk; int sclk; int mclk; } ;


 int CONFIG_SND_EP93XX_SOC_I2S_WATCHDOG ;
 unsigned int EP93XX_I2S_GLCTRL ;
 unsigned int EP93XX_I2S_RX0EN ;
 unsigned int EP93XX_I2S_TX0EN ;
 unsigned int EP93XX_I2S_TXCTRL ;
 int EP93XX_I2S_TXCTRL_TXEMPTY_LVL ;
 int EP93XX_I2S_TXCTRL_TXUFIE ;
 scalar_t__ IS_ENABLED (int ) ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int clk_enable (int ) ;
 int ep93xx_i2s_read_reg (struct ep93xx_i2s_info*,unsigned int) ;
 int ep93xx_i2s_write_reg (struct ep93xx_i2s_info*,unsigned int,int) ;

__attribute__((used)) static void ep93xx_i2s_enable(struct ep93xx_i2s_info *info, int stream)
{
 unsigned base_reg;

 if ((ep93xx_i2s_read_reg(info, EP93XX_I2S_TX0EN) & 0x1) == 0 &&
     (ep93xx_i2s_read_reg(info, EP93XX_I2S_RX0EN) & 0x1) == 0) {

  clk_enable(info->mclk);
  clk_enable(info->sclk);
  clk_enable(info->lrclk);


  ep93xx_i2s_write_reg(info, EP93XX_I2S_GLCTRL, 1);
 }


 if (stream == SNDRV_PCM_STREAM_PLAYBACK)
  base_reg = EP93XX_I2S_TX0EN;
 else
  base_reg = EP93XX_I2S_RX0EN;
 ep93xx_i2s_write_reg(info, base_reg, 1);


 if (IS_ENABLED(CONFIG_SND_EP93XX_SOC_I2S_WATCHDOG) &&
     stream == SNDRV_PCM_STREAM_PLAYBACK)
  ep93xx_i2s_write_reg(info, EP93XX_I2S_TXCTRL,
         EP93XX_I2S_TXCTRL_TXEMPTY_LVL |
         EP93XX_I2S_TXCTRL_TXUFIE);
}
