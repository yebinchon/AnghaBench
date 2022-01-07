
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_mcbsp {int free; int lock; int * reg_cache; scalar_t__ id; int dev; scalar_t__ tx_irq; scalar_t__ rx_irq; scalar_t__ irq; TYPE_2__* pdata; } ;
struct TYPE_4__ {scalar_t__ has_wakeup; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* free ) (scalar_t__) ;} ;


 int IRQEN ;
 int MCBSP_CLKS_PRCM_SRC ;
 int MCBSP_WRITE (struct omap_mcbsp*,int ,int ) ;
 int WAKEUPEN ;
 int dev_err (int ,char*,scalar_t__) ;
 int free_irq (scalar_t__,void*) ;
 int kfree (void*) ;
 int mcbsp_omap1 () ;
 int omap2_mcbsp_set_clks_src (struct omap_mcbsp*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void omap_mcbsp_free(struct omap_mcbsp *mcbsp)
{
 void *reg_cache;

 if(mcbsp->pdata->ops && mcbsp->pdata->ops->free)
  mcbsp->pdata->ops->free(mcbsp->id - 1);


 if (mcbsp->pdata->has_wakeup)
  MCBSP_WRITE(mcbsp, WAKEUPEN, 0);


 if (mcbsp->irq)
  MCBSP_WRITE(mcbsp, IRQEN, 0);

 if (mcbsp->irq) {
  free_irq(mcbsp->irq, (void *)mcbsp);
 } else {
  free_irq(mcbsp->rx_irq, (void *)mcbsp);
  free_irq(mcbsp->tx_irq, (void *)mcbsp);
 }

 reg_cache = mcbsp->reg_cache;
 if (!mcbsp_omap1())
  omap2_mcbsp_set_clks_src(mcbsp, MCBSP_CLKS_PRCM_SRC);

 spin_lock(&mcbsp->lock);
 if (mcbsp->free)
  dev_err(mcbsp->dev, "McBSP%d was not reserved\n", mcbsp->id);
 else
  mcbsp->free = 1;
 mcbsp->reg_cache = ((void*)0);
 spin_unlock(&mcbsp->lock);

 kfree(reg_cache);
}
