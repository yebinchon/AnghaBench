
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8993_priv {int dev; int regmap; int fll_lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int WM8993_FLL_LOCK_EINT ;
 int WM8993_GPIOCTRL_2 ;
 int WM8993_GPIO_CTRL_1 ;
 int WM8993_IRQ ;
 int WM8993_TEMPOK_EINT ;
 int complete (int *) ;
 int dev_crit (int ,char*) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static irqreturn_t wm8993_irq(int irq, void *data)
{
 struct wm8993_priv *wm8993 = data;
 int mask, val, ret;

 ret = regmap_read(wm8993->regmap, WM8993_GPIO_CTRL_1, &val);
 if (ret != 0) {
  dev_err(wm8993->dev, "Failed to read interrupt status: %d\n",
   ret);
  return IRQ_NONE;
 }

 ret = regmap_read(wm8993->regmap, WM8993_GPIOCTRL_2, &mask);
 if (ret != 0) {
  dev_err(wm8993->dev, "Failed to read interrupt mask: %d\n",
   ret);
  return IRQ_NONE;
 }


 val &= ~(mask | WM8993_IRQ);
 if (!val)
  return IRQ_NONE;

 if (val & WM8993_TEMPOK_EINT)
  dev_crit(wm8993->dev, "Thermal warning\n");

 if (val & WM8993_FLL_LOCK_EINT) {
  dev_dbg(wm8993->dev, "FLL locked\n");
  complete(&wm8993->fll_lock);
 }

 ret = regmap_write(wm8993->regmap, WM8993_GPIO_CTRL_1, val);
 if (ret != 0)
  dev_err(wm8993->dev, "Failed to ack interrupt: %d\n", ret);

 return IRQ_HANDLED;
}
