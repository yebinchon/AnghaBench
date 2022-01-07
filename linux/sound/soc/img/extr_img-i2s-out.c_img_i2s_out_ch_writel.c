
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_i2s_out {int channel_base; } ;


 int IMG_I2S_OUT_CH_STRIDE ;
 int writel (int,int) ;

__attribute__((used)) static inline void img_i2s_out_ch_writel(struct img_i2s_out *i2s,
     u32 chan, u32 val, u32 reg)
{
 writel(val, i2s->channel_base + (chan * IMG_I2S_OUT_CH_STRIDE) + reg);
}
