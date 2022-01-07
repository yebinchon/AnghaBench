
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_spdif_out {int rst; } ;


 int IMG_SPDIF_OUT_CSH_UV ;
 int IMG_SPDIF_OUT_CSL ;
 int IMG_SPDIF_OUT_CTL ;
 int IMG_SPDIF_OUT_CTL_SRT_MASK ;
 int img_spdif_out_readl (struct img_spdif_out*,int ) ;
 int img_spdif_out_writel (struct img_spdif_out*,int,int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static void img_spdif_out_reset(struct img_spdif_out *spdif)
{
 u32 ctl, status_low, status_high;

 ctl = img_spdif_out_readl(spdif, IMG_SPDIF_OUT_CTL) &
   ~IMG_SPDIF_OUT_CTL_SRT_MASK;
 status_low = img_spdif_out_readl(spdif, IMG_SPDIF_OUT_CSL);
 status_high = img_spdif_out_readl(spdif, IMG_SPDIF_OUT_CSH_UV);

 reset_control_assert(spdif->rst);
 reset_control_deassert(spdif->rst);

 img_spdif_out_writel(spdif, ctl, IMG_SPDIF_OUT_CTL);
 img_spdif_out_writel(spdif, status_low, IMG_SPDIF_OUT_CSL);
 img_spdif_out_writel(spdif, status_high, IMG_SPDIF_OUT_CSH_UV);
}
