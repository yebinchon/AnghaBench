
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_i2s_in {int channel_base; } ;


 int IMG_I2S_IN_CH_STRIDE ;
 int readl (int) ;

__attribute__((used)) static inline u32 img_i2s_in_ch_readl(struct img_i2s_in *i2s, u32 chan,
     u32 reg)
{
 return readl(i2s->channel_base + (chan * IMG_I2S_IN_CH_STRIDE) + reg);
}
