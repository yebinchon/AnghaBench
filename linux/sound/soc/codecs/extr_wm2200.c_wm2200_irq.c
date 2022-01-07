
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm2200_priv {int regmap; int fll_lock; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int WM2200_FLL_LOCK_EINT ;
 int WM2200_INTERRUPT_STATUS_2 ;
 int WM2200_INTERRUPT_STATUS_2_MASK ;
 int complete (int *) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static irqreturn_t wm2200_irq(int irq, void *data)
{
 struct wm2200_priv *wm2200 = data;
 unsigned int val, mask;
 int ret;

 ret = regmap_read(wm2200->regmap, WM2200_INTERRUPT_STATUS_2, &val);
 if (ret != 0) {
  dev_err(wm2200->dev, "Failed to read IRQ status: %d\n", ret);
  return IRQ_NONE;
 }

 ret = regmap_read(wm2200->regmap, WM2200_INTERRUPT_STATUS_2_MASK,
      &mask);
 if (ret != 0) {
  dev_warn(wm2200->dev, "Failed to read IRQ mask: %d\n", ret);
  mask = 0;
 }

 val &= ~mask;

 if (val & WM2200_FLL_LOCK_EINT) {
  dev_dbg(wm2200->dev, "FLL locked\n");
  complete(&wm2200->fll_lock);
 }

 if (val) {
  regmap_write(wm2200->regmap, WM2200_INTERRUPT_STATUS_2, val);

  return IRQ_HANDLED;
 } else {
  return IRQ_NONE;
 }
}
