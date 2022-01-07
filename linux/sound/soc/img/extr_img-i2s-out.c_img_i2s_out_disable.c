
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_i2s_out {int dummy; } ;


 int IMG_I2S_OUT_CTL ;
 int IMG_I2S_OUT_CTL_ME_MASK ;
 int img_i2s_out_readl (struct img_i2s_out*,int ) ;
 int img_i2s_out_writel (struct img_i2s_out*,int ,int ) ;

__attribute__((used)) static inline void img_i2s_out_disable(struct img_i2s_out *i2s)
{
 u32 reg;

 reg = img_i2s_out_readl(i2s, IMG_I2S_OUT_CTL);
 reg &= ~IMG_I2S_OUT_CTL_ME_MASK;
 img_i2s_out_writel(i2s, reg, IMG_I2S_OUT_CTL);
}
