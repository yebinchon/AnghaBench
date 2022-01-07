
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_i2s_in {int active_channels; } ;


 int IMG_I2S_IN_CH_CTL ;
 int IMG_I2S_IN_CH_CTL_FIFO_FLUSH_MASK ;
 int img_i2s_in_ch_readl (struct img_i2s_in*,int,int ) ;
 int img_i2s_in_ch_writel (struct img_i2s_in*,int,int ,int ) ;

__attribute__((used)) static inline void img_i2s_in_flush(struct img_i2s_in *i2s)
{
 int i;
 u32 reg;

 for (i = 0; i < i2s->active_channels; i++) {
  reg = img_i2s_in_ch_readl(i2s, i, IMG_I2S_IN_CH_CTL);
  reg |= IMG_I2S_IN_CH_CTL_FIFO_FLUSH_MASK;
  img_i2s_in_ch_writel(i2s, i, reg, IMG_I2S_IN_CH_CTL);
  reg &= ~IMG_I2S_IN_CH_CTL_FIFO_FLUSH_MASK;
  img_i2s_in_ch_writel(i2s, i, reg, IMG_I2S_IN_CH_CTL);
 }
}
