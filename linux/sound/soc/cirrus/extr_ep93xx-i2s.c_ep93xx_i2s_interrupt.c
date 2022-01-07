
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_i2s_info {int dummy; } ;
typedef int irqreturn_t ;


 int EP93XX_I2S_GLSTS ;
 int EP93XX_I2S_GLSTS_TX0_FIFO_FULL ;
 int EP93XX_I2S_I2STX0LFT ;
 int EP93XX_I2S_I2STX0RT ;
 int EP93XX_I2S_TX0EN ;
 int IRQ_HANDLED ;
 int ep93xx_i2s_read_reg (struct ep93xx_i2s_info*,int ) ;
 int ep93xx_i2s_write_reg (struct ep93xx_i2s_info*,int ,int) ;

__attribute__((used)) static irqreturn_t ep93xx_i2s_interrupt(int irq, void *dev_id)
{
 struct ep93xx_i2s_info *info = dev_id;


 ep93xx_i2s_write_reg(info, EP93XX_I2S_TX0EN, 0);






 while (!(ep93xx_i2s_read_reg(info, EP93XX_I2S_GLSTS) &
   EP93XX_I2S_GLSTS_TX0_FIFO_FULL)) {
  ep93xx_i2s_write_reg(info, EP93XX_I2S_I2STX0LFT, 0);
  ep93xx_i2s_write_reg(info, EP93XX_I2S_I2STX0RT, 0);
 }

 ep93xx_i2s_write_reg(info, EP93XX_I2S_TX0EN, 1);

 return IRQ_HANDLED;
}
