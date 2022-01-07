
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_mcbsp {int free; int lock; int * reg_cache; TYPE_2__* pdata; scalar_t__ id; scalar_t__ tx_irq; int dev; scalar_t__ rx_irq; scalar_t__ irq; int reg_cache_size; } ;
struct TYPE_4__ {scalar_t__ has_wakeup; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* free ) (scalar_t__) ;int (* request ) (scalar_t__) ;} ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MCBSP_WRITE (struct omap_mcbsp*,int ,int ) ;
 int SPCR1 ;
 int SPCR2 ;
 int WAKEUPEN ;
 int dev_err (int ,char*,...) ;
 int free_irq (scalar_t__,void*) ;
 int kfree (void*) ;
 void* kzalloc (int ,int ) ;
 int omap_mcbsp_irq_handler ;
 int omap_mcbsp_rx_irq_handler ;
 int omap_mcbsp_tx_irq_handler ;
 int request_irq (scalar_t__,int ,int ,char*,void*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__) ;

__attribute__((used)) static int omap_mcbsp_request(struct omap_mcbsp *mcbsp)
{
 void *reg_cache;
 int err;

 reg_cache = kzalloc(mcbsp->reg_cache_size, GFP_KERNEL);
 if (!reg_cache)
  return -ENOMEM;

 spin_lock(&mcbsp->lock);
 if (!mcbsp->free) {
  dev_err(mcbsp->dev, "McBSP%d is currently in use\n", mcbsp->id);
  err = -EBUSY;
  goto err_kfree;
 }

 mcbsp->free = 0;
 mcbsp->reg_cache = reg_cache;
 spin_unlock(&mcbsp->lock);

 if(mcbsp->pdata->ops && mcbsp->pdata->ops->request)
  mcbsp->pdata->ops->request(mcbsp->id - 1);





 MCBSP_WRITE(mcbsp, SPCR1, 0);
 MCBSP_WRITE(mcbsp, SPCR2, 0);

 if (mcbsp->irq) {
  err = request_irq(mcbsp->irq, omap_mcbsp_irq_handler, 0,
      "McBSP", (void *)mcbsp);
  if (err != 0) {
   dev_err(mcbsp->dev, "Unable to request IRQ\n");
   goto err_clk_disable;
  }
 } else {
  err = request_irq(mcbsp->tx_irq, omap_mcbsp_tx_irq_handler, 0,
      "McBSP TX", (void *)mcbsp);
  if (err != 0) {
   dev_err(mcbsp->dev, "Unable to request TX IRQ\n");
   goto err_clk_disable;
  }

  err = request_irq(mcbsp->rx_irq, omap_mcbsp_rx_irq_handler, 0,
      "McBSP RX", (void *)mcbsp);
  if (err != 0) {
   dev_err(mcbsp->dev, "Unable to request RX IRQ\n");
   goto err_free_irq;
  }
 }

 return 0;
err_free_irq:
 free_irq(mcbsp->tx_irq, (void *)mcbsp);
err_clk_disable:
 if(mcbsp->pdata->ops && mcbsp->pdata->ops->free)
  mcbsp->pdata->ops->free(mcbsp->id - 1);


 if (mcbsp->pdata->has_wakeup)
  MCBSP_WRITE(mcbsp, WAKEUPEN, 0);

 spin_lock(&mcbsp->lock);
 mcbsp->free = 1;
 mcbsp->reg_cache = ((void*)0);
err_kfree:
 spin_unlock(&mcbsp->lock);
 kfree(reg_cache);

 return err;
}
