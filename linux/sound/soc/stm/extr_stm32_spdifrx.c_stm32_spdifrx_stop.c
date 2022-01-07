
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_spdifrx_data {int lock; int regmap; scalar_t__ refcount; } ;


 int SPDIFRX_CR_RXDMAEN ;
 int SPDIFRX_CR_SPDIFENSET (int ) ;
 int SPDIFRX_CR_SPDIFEN_MASK ;
 int SPDIFRX_SPDIFEN_DISABLE ;
 int SPDIFRX_XIFCR_MASK ;
 int SPDIFRX_XIMR_MASK ;
 int STM32_SPDIFRX_CR ;
 int STM32_SPDIFRX_CSR ;
 int STM32_SPDIFRX_DR ;
 int STM32_SPDIFRX_IFCR ;
 int STM32_SPDIFRX_IMR ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void stm32_spdifrx_stop(struct stm32_spdifrx_data *spdifrx)
{
 int cr, cr_mask, reg;

 spin_lock(&spdifrx->lock);

 if (--spdifrx->refcount) {
  spin_unlock(&spdifrx->lock);
  return;
 }

 cr = SPDIFRX_CR_SPDIFENSET(SPDIFRX_SPDIFEN_DISABLE);
 cr_mask = SPDIFRX_CR_SPDIFEN_MASK | SPDIFRX_CR_RXDMAEN;

 regmap_update_bits(spdifrx->regmap, STM32_SPDIFRX_CR, cr_mask, cr);

 regmap_update_bits(spdifrx->regmap, STM32_SPDIFRX_IMR,
      SPDIFRX_XIMR_MASK, 0);

 regmap_update_bits(spdifrx->regmap, STM32_SPDIFRX_IFCR,
      SPDIFRX_XIFCR_MASK, SPDIFRX_XIFCR_MASK);


 regmap_read(spdifrx->regmap, STM32_SPDIFRX_DR, &reg);
 regmap_read(spdifrx->regmap, STM32_SPDIFRX_CSR, &reg);

 spin_unlock(&spdifrx->lock);
}
