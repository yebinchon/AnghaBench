
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_i2s_out {int max_i2s_chan; int active_channels; int rst; int force_clk_active; } ;


 int IMG_I2S_OUT_CHAN_CTL_ME_MASK ;
 int IMG_I2S_OUT_CH_CTL ;
 int IMG_I2S_OUT_CTL ;
 int IMG_I2S_OUT_CTL_CLK_EN_MASK ;
 int IMG_I2S_OUT_CTL_DATA_EN_MASK ;
 int IMG_I2S_OUT_CTL_ME_MASK ;
 int img_i2s_out_ch_enable (struct img_i2s_out*,int) ;
 int img_i2s_out_ch_readl (struct img_i2s_out*,int ,int ) ;
 int img_i2s_out_ch_writel (struct img_i2s_out*,int,int,int ) ;
 int img_i2s_out_enable (struct img_i2s_out*) ;
 int img_i2s_out_readl (struct img_i2s_out*,int ) ;
 int img_i2s_out_writel (struct img_i2s_out*,int,int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static void img_i2s_out_reset(struct img_i2s_out *i2s)
{
 int i;
 u32 core_ctl, chan_ctl;

 core_ctl = img_i2s_out_readl(i2s, IMG_I2S_OUT_CTL) &
   ~IMG_I2S_OUT_CTL_ME_MASK &
   ~IMG_I2S_OUT_CTL_DATA_EN_MASK;

 if (!i2s->force_clk_active)
  core_ctl &= ~IMG_I2S_OUT_CTL_CLK_EN_MASK;

 chan_ctl = img_i2s_out_ch_readl(i2s, 0, IMG_I2S_OUT_CH_CTL) &
   ~IMG_I2S_OUT_CHAN_CTL_ME_MASK;

 reset_control_assert(i2s->rst);
 reset_control_deassert(i2s->rst);

 for (i = 0; i < i2s->max_i2s_chan; i++)
  img_i2s_out_ch_writel(i2s, i, chan_ctl, IMG_I2S_OUT_CH_CTL);

 for (i = 0; i < i2s->active_channels; i++)
  img_i2s_out_ch_enable(i2s, i);

 img_i2s_out_writel(i2s, core_ctl, IMG_I2S_OUT_CTL);
 img_i2s_out_enable(i2s);
}
