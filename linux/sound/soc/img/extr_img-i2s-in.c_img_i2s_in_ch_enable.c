
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_i2s_in {int dummy; } ;


 int IMG_I2S_IN_CH_CTL ;
 int IMG_I2S_IN_CH_CTL_ME_MASK ;
 int img_i2s_in_ch_readl (struct img_i2s_in*,int ,int ) ;
 int img_i2s_in_ch_writel (struct img_i2s_in*,int ,int ,int ) ;

__attribute__((used)) static inline void img_i2s_in_ch_enable(struct img_i2s_in *i2s, u32 chan)
{
 u32 reg;

 reg = img_i2s_in_ch_readl(i2s, chan, IMG_I2S_IN_CH_CTL);
 reg |= IMG_I2S_IN_CH_CTL_ME_MASK;
 img_i2s_in_ch_writel(i2s, chan, reg, IMG_I2S_IN_CH_CTL);
}
