
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_i2s_out {int dummy; } ;


 int IMG_I2S_OUT_CHAN_CTL_ME_MASK ;
 int IMG_I2S_OUT_CH_CTL ;
 int img_i2s_out_ch_readl (struct img_i2s_out*,int ,int ) ;
 int img_i2s_out_ch_writel (struct img_i2s_out*,int ,int ,int ) ;

__attribute__((used)) static inline void img_i2s_out_ch_disable(struct img_i2s_out *i2s, u32 chan)
{
 u32 reg;

 reg = img_i2s_out_ch_readl(i2s, chan, IMG_I2S_OUT_CH_CTL);
 reg &= ~IMG_I2S_OUT_CHAN_CTL_ME_MASK;
 img_i2s_out_ch_writel(i2s, chan, reg, IMG_I2S_OUT_CH_CTL);
}
