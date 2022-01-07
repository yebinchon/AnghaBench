
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct img_spdif_in {unsigned int single_freq; int lock; scalar_t__ active; } ;


 int EBUSY ;
 int IMG_SPDIF_IN_CLKGEN ;
 unsigned int IMG_SPDIF_IN_CLKGEN_HLD_MASK ;
 unsigned int IMG_SPDIF_IN_CLKGEN_HLD_SHIFT ;
 unsigned int IMG_SPDIF_IN_CLKGEN_NOM_MASK ;
 unsigned int IMG_SPDIF_IN_CLKGEN_NOM_SHIFT ;
 int img_spdif_in_check_max_rate (struct img_spdif_in*,unsigned int,unsigned long*) ;
 int img_spdif_in_do_clkgen_calc (unsigned int,unsigned int*,unsigned int*,unsigned long) ;
 int img_spdif_in_writel (struct img_spdif_in*,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int img_spdif_in_do_clkgen_single(struct img_spdif_in *spdif,
  unsigned int rate)
{
 unsigned int nom, hld;
 unsigned long flags, clk_rate;
 int ret = 0;
 u32 reg;

 ret = img_spdif_in_check_max_rate(spdif, rate, &clk_rate);
 if (ret)
  return ret;

 ret = img_spdif_in_do_clkgen_calc(rate, &nom, &hld, clk_rate);
 if (ret)
  return ret;

 reg = (nom << IMG_SPDIF_IN_CLKGEN_NOM_SHIFT) &
  IMG_SPDIF_IN_CLKGEN_NOM_MASK;
 reg |= (hld << IMG_SPDIF_IN_CLKGEN_HLD_SHIFT) &
  IMG_SPDIF_IN_CLKGEN_HLD_MASK;

 spin_lock_irqsave(&spdif->lock, flags);

 if (spdif->active) {
  spin_unlock_irqrestore(&spdif->lock, flags);
  return -EBUSY;
 }

 img_spdif_in_writel(spdif, reg, IMG_SPDIF_IN_CLKGEN);

 spdif->single_freq = rate;

 spin_unlock_irqrestore(&spdif->lock, flags);

 return 0;
}
