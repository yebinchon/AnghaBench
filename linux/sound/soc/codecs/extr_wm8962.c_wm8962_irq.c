
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8962_priv {int mic_work; int regmap; int fll_lock; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int WM8962_FIFOS_ERR_EINT ;
 unsigned int WM8962_FLL_LOCK_EINT ;
 int WM8962_INTERRUPT_STATUS_2 ;
 int WM8962_INTERRUPT_STATUS_2_MASK ;
 unsigned int WM8962_MICD_EINT ;
 unsigned int WM8962_MICSCD_EINT ;
 int WM8962_TEMP_ERR_HP ;
 int WM8962_TEMP_ERR_SPK ;
 unsigned int WM8962_TEMP_SHUT_EINT ;
 int WM8962_TEMP_WARN_HP ;
 int WM8962_TEMP_WARN_SPK ;
 int WM8962_THERMAL_SHUTDOWN_STATUS ;
 int complete (int *) ;
 int dev_crit (struct device*,char*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 struct wm8962_priv* dev_get_drvdata (struct device*) ;
 int dev_name (struct device*) ;
 int dev_warn (struct device*,char*,int) ;
 int msecs_to_jiffies (int) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int pm_wakeup_event (struct device*,int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int regmap_read (int ,int ,...) ;
 int regmap_write (int ,int ,unsigned int) ;
 int system_power_efficient_wq ;
 int trace_snd_soc_jack_irq (int ) ;

__attribute__((used)) static irqreturn_t wm8962_irq(int irq, void *data)
{
 struct device *dev = data;
 struct wm8962_priv *wm8962 = dev_get_drvdata(dev);
 unsigned int mask;
 unsigned int active;
 int reg, ret;

 ret = pm_runtime_get_sync(dev);
 if (ret < 0) {
  dev_err(dev, "Failed to resume: %d\n", ret);
  return IRQ_NONE;
 }

 ret = regmap_read(wm8962->regmap, WM8962_INTERRUPT_STATUS_2_MASK,
     &mask);
 if (ret != 0) {
  pm_runtime_put(dev);
  dev_err(dev, "Failed to read interrupt mask: %d\n",
   ret);
  return IRQ_NONE;
 }

 ret = regmap_read(wm8962->regmap, WM8962_INTERRUPT_STATUS_2, &active);
 if (ret != 0) {
  pm_runtime_put(dev);
  dev_err(dev, "Failed to read interrupt: %d\n", ret);
  return IRQ_NONE;
 }

 active &= ~mask;

 if (!active) {
  pm_runtime_put(dev);
  return IRQ_NONE;
 }


 ret = regmap_write(wm8962->regmap, WM8962_INTERRUPT_STATUS_2, active);
 if (ret != 0)
  dev_warn(dev, "Failed to ack interrupt: %d\n", ret);

 if (active & WM8962_FLL_LOCK_EINT) {
  dev_dbg(dev, "FLL locked\n");
  complete(&wm8962->fll_lock);
 }

 if (active & WM8962_FIFOS_ERR_EINT)
  dev_err(dev, "FIFO error\n");

 if (active & WM8962_TEMP_SHUT_EINT) {
  dev_crit(dev, "Thermal shutdown\n");

  ret = regmap_read(wm8962->regmap,
      WM8962_THERMAL_SHUTDOWN_STATUS, &reg);
  if (ret != 0) {
   dev_warn(dev, "Failed to read thermal status: %d\n",
     ret);
   reg = 0;
  }

  if (reg & WM8962_TEMP_ERR_HP)
   dev_crit(dev, "Headphone thermal error\n");
  if (reg & WM8962_TEMP_WARN_HP)
   dev_crit(dev, "Headphone thermal warning\n");
  if (reg & WM8962_TEMP_ERR_SPK)
   dev_crit(dev, "Speaker thermal error\n");
  if (reg & WM8962_TEMP_WARN_SPK)
   dev_crit(dev, "Speaker thermal warning\n");
 }

 if (active & (WM8962_MICSCD_EINT | WM8962_MICD_EINT)) {
  dev_dbg(dev, "Microphone event detected\n");


  trace_snd_soc_jack_irq(dev_name(dev));


  pm_wakeup_event(dev, 300);

  queue_delayed_work(system_power_efficient_wq,
       &wm8962->mic_work,
       msecs_to_jiffies(250));
 }

 pm_runtime_put(dev);

 return IRQ_HANDLED;
}
