
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_spdifrx_data {int lock; TYPE_1__* pdev; int regmap; int refcount; } ;
struct TYPE_2__ {int dev; } ;


 int SPDIFRX_CR_CUMSK ;
 int SPDIFRX_CR_PMSK ;
 int SPDIFRX_CR_PTMSK ;
 int SPDIFRX_CR_RXSTEO ;
 int SPDIFRX_CR_SPDIFENSET (int ) ;
 int SPDIFRX_CR_SPDIFEN_MASK ;
 int SPDIFRX_CR_VMSK ;
 int SPDIFRX_CR_WFA ;
 int SPDIFRX_IMR_IFEIE ;
 int SPDIFRX_IMR_PERRIE ;
 int SPDIFRX_IMR_SYNCDIE ;
 int SPDIFRX_SPDIFEN_SYNC ;
 int STM32_SPDIFRX_CR ;
 int STM32_SPDIFRX_IMR ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int stm32_spdifrx_start_sync(struct stm32_spdifrx_data *spdifrx)
{
 int cr, cr_mask, imr, ret;


 imr = SPDIFRX_IMR_IFEIE | SPDIFRX_IMR_SYNCDIE | SPDIFRX_IMR_PERRIE;
 ret = regmap_update_bits(spdifrx->regmap, STM32_SPDIFRX_IMR, imr, imr);
 if (ret)
  return ret;

 spin_lock(&spdifrx->lock);

 spdifrx->refcount++;

 regmap_read(spdifrx->regmap, STM32_SPDIFRX_CR, &cr);

 if (!(cr & SPDIFRX_CR_SPDIFEN_MASK)) {




  dev_dbg(&spdifrx->pdev->dev, "start synchronization\n");
  cr = SPDIFRX_CR_WFA | SPDIFRX_CR_PMSK | SPDIFRX_CR_VMSK |
       SPDIFRX_CR_CUMSK | SPDIFRX_CR_PTMSK | SPDIFRX_CR_RXSTEO;
  cr_mask = cr;

  cr |= SPDIFRX_CR_SPDIFENSET(SPDIFRX_SPDIFEN_SYNC);
  cr_mask |= SPDIFRX_CR_SPDIFEN_MASK;
  ret = regmap_update_bits(spdifrx->regmap, STM32_SPDIFRX_CR,
      cr_mask, cr);
  if (ret < 0)
   dev_err(&spdifrx->pdev->dev,
    "Failed to start synchronization\n");
 }

 spin_unlock(&spdifrx->lock);

 return ret;
}
