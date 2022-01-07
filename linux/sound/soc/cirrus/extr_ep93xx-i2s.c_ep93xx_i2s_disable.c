
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_i2s_info {int mclk; int sclk; int lrclk; } ;


 int CONFIG_SND_EP93XX_SOC_I2S_WATCHDOG ;
 unsigned int EP93XX_I2S_GLCTRL ;
 unsigned int EP93XX_I2S_RX0EN ;
 unsigned int EP93XX_I2S_TX0EN ;
 unsigned int EP93XX_I2S_TXCTRL ;
 scalar_t__ IS_ENABLED (int ) ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int clk_disable (int ) ;
 int ep93xx_i2s_read_reg (struct ep93xx_i2s_info*,unsigned int) ;
 int ep93xx_i2s_write_reg (struct ep93xx_i2s_info*,unsigned int,int ) ;

__attribute__((used)) static void ep93xx_i2s_disable(struct ep93xx_i2s_info *info, int stream)
{
 unsigned base_reg;


 if (IS_ENABLED(CONFIG_SND_EP93XX_SOC_I2S_WATCHDOG) &&
     stream == SNDRV_PCM_STREAM_PLAYBACK)
  ep93xx_i2s_write_reg(info, EP93XX_I2S_TXCTRL, 0);


 if (stream == SNDRV_PCM_STREAM_PLAYBACK)
  base_reg = EP93XX_I2S_TX0EN;
 else
  base_reg = EP93XX_I2S_RX0EN;
 ep93xx_i2s_write_reg(info, base_reg, 0);

 if ((ep93xx_i2s_read_reg(info, EP93XX_I2S_TX0EN) & 0x1) == 0 &&
     (ep93xx_i2s_read_reg(info, EP93XX_I2S_RX0EN) & 0x1) == 0) {

  ep93xx_i2s_write_reg(info, EP93XX_I2S_GLCTRL, 0);


  clk_disable(info->lrclk);
  clk_disable(info->sclk);
  clk_disable(info->mclk);
 }
}
