
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct img_spdif_in {unsigned int trk; unsigned int* aclkgen_regs; int multi_freq; unsigned int* multi_freqs; int lock; scalar_t__ active; } ;


 int EBUSY ;
 unsigned int IMG_SPDIF_IN_ACLKGEN_HLD_MASK ;
 unsigned int IMG_SPDIF_IN_ACLKGEN_HLD_SHIFT ;
 unsigned int IMG_SPDIF_IN_ACLKGEN_NOM_MASK ;
 unsigned int IMG_SPDIF_IN_ACLKGEN_NOM_SHIFT ;
 unsigned int IMG_SPDIF_IN_ACLKGEN_TRK_SHIFT ;
 int IMG_SPDIF_IN_NUM_ACLKGEN ;
 int img_spdif_in_aclkgen_writel (struct img_spdif_in*,int) ;
 int img_spdif_in_check_max_rate (struct img_spdif_in*,unsigned int,unsigned long*) ;
 int img_spdif_in_do_clkgen_calc (unsigned int,unsigned int*,unsigned int*,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int img_spdif_in_do_clkgen_multi(struct img_spdif_in *spdif,
  unsigned int multi_freqs[])
{
 unsigned int nom, hld, rate, max_rate = 0;
 unsigned long flags, clk_rate;
 int i, ret = 0;
 u32 reg, trk_reg, temp_regs[IMG_SPDIF_IN_NUM_ACLKGEN];

 for (i = 0; i < IMG_SPDIF_IN_NUM_ACLKGEN; i++)
  if (multi_freqs[i] > max_rate)
   max_rate = multi_freqs[i];

 ret = img_spdif_in_check_max_rate(spdif, max_rate, &clk_rate);
 if (ret)
  return ret;

 for (i = 0; i < IMG_SPDIF_IN_NUM_ACLKGEN; i++) {
  rate = multi_freqs[i];

  ret = img_spdif_in_do_clkgen_calc(rate, &nom, &hld, clk_rate);
  if (ret)
   return ret;

  reg = (nom << IMG_SPDIF_IN_ACLKGEN_NOM_SHIFT) &
   IMG_SPDIF_IN_ACLKGEN_NOM_MASK;
  reg |= (hld << IMG_SPDIF_IN_ACLKGEN_HLD_SHIFT) &
   IMG_SPDIF_IN_ACLKGEN_HLD_MASK;
  temp_regs[i] = reg;
 }

 spin_lock_irqsave(&spdif->lock, flags);

 if (spdif->active) {
  spin_unlock_irqrestore(&spdif->lock, flags);
  return -EBUSY;
 }

 trk_reg = spdif->trk << IMG_SPDIF_IN_ACLKGEN_TRK_SHIFT;

 for (i = 0; i < IMG_SPDIF_IN_NUM_ACLKGEN; i++) {
  spdif->aclkgen_regs[i] = temp_regs[i] | trk_reg;
  img_spdif_in_aclkgen_writel(spdif, i);
 }

 spdif->multi_freq = 1;
 spdif->multi_freqs[0] = multi_freqs[0];
 spdif->multi_freqs[1] = multi_freqs[1];
 spdif->multi_freqs[2] = multi_freqs[2];
 spdif->multi_freqs[3] = multi_freqs[3];

 spin_unlock_irqrestore(&spdif->lock, flags);

 return 0;
}
