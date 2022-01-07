
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm_adsp {int pwr_lock; scalar_t__ base; TYPE_1__* ops; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* stop_watchdog ) (struct wm_adsp*) ;} ;


 scalar_t__ ADSP2_BUS_ERR_ADDR ;
 unsigned int ADSP2_BUS_ERR_ADDR_MASK ;
 int ADSP2_CTRL_ERR_EINT ;
 scalar_t__ ADSP2_LOCK_REGION_CTRL ;
 unsigned int ADSP2_PMEM_ERR_ADDR_MASK ;
 unsigned int ADSP2_PMEM_ERR_ADDR_SHIFT ;
 scalar_t__ ADSP2_PMEM_ERR_ADDR_XMEM_ERR_ADDR ;
 unsigned int ADSP2_REGION_LOCK_ERR_MASK ;
 unsigned int ADSP2_SLAVE_ERR_MASK ;
 unsigned int ADSP2_WDT_TIMEOUT_STS_MASK ;
 unsigned int ADSP2_XMEM_ERR_ADDR_MASK ;
 int IRQ_HANDLED ;
 int adsp_err (struct wm_adsp*,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (struct regmap*,scalar_t__,unsigned int*) ;
 int regmap_update_bits (struct regmap*,scalar_t__,int ,int ) ;
 int stub1 (struct wm_adsp*) ;
 int wm_adsp_fatal_error (struct wm_adsp*) ;

irqreturn_t wm_adsp2_bus_error(int irq, void *data)
{
 struct wm_adsp *dsp = (struct wm_adsp *)data;
 unsigned int val;
 struct regmap *regmap = dsp->regmap;
 int ret = 0;

 mutex_lock(&dsp->pwr_lock);

 ret = regmap_read(regmap, dsp->base + ADSP2_LOCK_REGION_CTRL, &val);
 if (ret) {
  adsp_err(dsp,
   "Failed to read Region Lock Ctrl register: %d\n", ret);
  goto error;
 }

 if (val & ADSP2_WDT_TIMEOUT_STS_MASK) {
  adsp_err(dsp, "watchdog timeout error\n");
  dsp->ops->stop_watchdog(dsp);
  wm_adsp_fatal_error(dsp);
 }

 if (val & (ADSP2_SLAVE_ERR_MASK | ADSP2_REGION_LOCK_ERR_MASK)) {
  if (val & ADSP2_SLAVE_ERR_MASK)
   adsp_err(dsp, "bus error: slave error\n");
  else
   adsp_err(dsp, "bus error: region lock error\n");

  ret = regmap_read(regmap, dsp->base + ADSP2_BUS_ERR_ADDR, &val);
  if (ret) {
   adsp_err(dsp,
     "Failed to read Bus Err Addr register: %d\n",
     ret);
   goto error;
  }

  adsp_err(dsp, "bus error address = 0x%x\n",
    val & ADSP2_BUS_ERR_ADDR_MASK);

  ret = regmap_read(regmap,
      dsp->base + ADSP2_PMEM_ERR_ADDR_XMEM_ERR_ADDR,
      &val);
  if (ret) {
   adsp_err(dsp,
     "Failed to read Pmem Xmem Err Addr register: %d\n",
     ret);
   goto error;
  }

  adsp_err(dsp, "xmem error address = 0x%x\n",
    val & ADSP2_XMEM_ERR_ADDR_MASK);
  adsp_err(dsp, "pmem error address = 0x%x\n",
    (val & ADSP2_PMEM_ERR_ADDR_MASK) >>
    ADSP2_PMEM_ERR_ADDR_SHIFT);
 }

 regmap_update_bits(regmap, dsp->base + ADSP2_LOCK_REGION_CTRL,
      ADSP2_CTRL_ERR_EINT, ADSP2_CTRL_ERR_EINT);

error:
 mutex_unlock(&dsp->pwr_lock);

 return IRQ_HANDLED;
}
