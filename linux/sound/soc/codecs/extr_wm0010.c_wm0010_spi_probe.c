
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int irq_flags; scalar_t__ reset_active_high; scalar_t__ gpio_reset; } ;
struct wm0010_priv {int gpio_reset_value; int irq; scalar_t__ board_max_spi_speed; int * dev; TYPE_2__ pdata; int state; scalar_t__ gpio_reset; int dbvdd; TYPE_1__* core_supplies; int boot_completion; int irq_lock; int lock; } ;
struct spi_device {int irq; int dev; scalar_t__ max_speed_hz; } ;
struct TYPE_6__ {char* supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long GPIOF_OUT_INIT_HIGH ;
 unsigned long GPIOF_OUT_INIT_LOW ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WM0010_POWER_OFF ;
 int dev_err (int *,char*,...) ;
 scalar_t__ dev_get_platdata (int *) ;
 int devm_gpio_request_one (int *,scalar_t__,unsigned long,char*) ;
 struct wm0010_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regulator_bulk_get (int *,int ,TYPE_1__*) ;
 int devm_regulator_get (int *,char*) ;
 int devm_snd_soc_register_component (int *,int *,TYPE_1__*,int ) ;
 int init_completion (int *) ;
 int irq_set_irq_wake (int,int) ;
 int memcpy (TYPE_2__*,scalar_t__,int) ;
 int mutex_init (int *) ;
 int request_threaded_irq (int,int *,int ,int,char*,struct wm0010_priv*) ;
 int soc_component_dev_wm0010 ;
 int spi_set_drvdata (struct spi_device*,struct wm0010_priv*) ;
 int spin_lock_init (int *) ;
 TYPE_1__* wm0010_dai ;
 int wm0010_irq ;

__attribute__((used)) static int wm0010_spi_probe(struct spi_device *spi)
{
 unsigned long gpio_flags;
 int ret;
 int trigger;
 int irq;
 struct wm0010_priv *wm0010;

 wm0010 = devm_kzalloc(&spi->dev, sizeof(*wm0010),
         GFP_KERNEL);
 if (!wm0010)
  return -ENOMEM;

 mutex_init(&wm0010->lock);
 spin_lock_init(&wm0010->irq_lock);

 spi_set_drvdata(spi, wm0010);
 wm0010->dev = &spi->dev;

 if (dev_get_platdata(&spi->dev))
  memcpy(&wm0010->pdata, dev_get_platdata(&spi->dev),
         sizeof(wm0010->pdata));

 init_completion(&wm0010->boot_completion);

 wm0010->core_supplies[0].supply = "AVDD";
 wm0010->core_supplies[1].supply = "DCVDD";
 ret = devm_regulator_bulk_get(wm0010->dev, ARRAY_SIZE(wm0010->core_supplies),
          wm0010->core_supplies);
 if (ret != 0) {
  dev_err(wm0010->dev, "Failed to obtain core supplies: %d\n",
   ret);
  return ret;
 }

 wm0010->dbvdd = devm_regulator_get(wm0010->dev, "DBVDD");
 if (IS_ERR(wm0010->dbvdd)) {
  ret = PTR_ERR(wm0010->dbvdd);
  dev_err(wm0010->dev, "Failed to obtain DBVDD: %d\n", ret);
  return ret;
 }

 if (wm0010->pdata.gpio_reset) {
  wm0010->gpio_reset = wm0010->pdata.gpio_reset;

  if (wm0010->pdata.reset_active_high)
   wm0010->gpio_reset_value = 1;
  else
   wm0010->gpio_reset_value = 0;

  if (wm0010->gpio_reset_value)
   gpio_flags = GPIOF_OUT_INIT_HIGH;
  else
   gpio_flags = GPIOF_OUT_INIT_LOW;

  ret = devm_gpio_request_one(wm0010->dev, wm0010->gpio_reset,
         gpio_flags, "wm0010 reset");
  if (ret < 0) {
   dev_err(wm0010->dev,
    "Failed to request GPIO for DSP reset: %d\n",
    ret);
   return ret;
  }
 } else {
  dev_err(wm0010->dev, "No reset GPIO configured\n");
  return -EINVAL;
 }

 wm0010->state = WM0010_POWER_OFF;

 irq = spi->irq;
 if (wm0010->pdata.irq_flags)
  trigger = wm0010->pdata.irq_flags;
 else
  trigger = IRQF_TRIGGER_FALLING;
 trigger |= IRQF_ONESHOT;

 ret = request_threaded_irq(irq, ((void*)0), wm0010_irq, trigger,
       "wm0010", wm0010);
 if (ret) {
  dev_err(wm0010->dev, "Failed to request IRQ %d: %d\n",
   irq, ret);
  return ret;
 }
 wm0010->irq = irq;

 ret = irq_set_irq_wake(irq, 1);
 if (ret) {
  dev_err(wm0010->dev, "Failed to set IRQ %d as wake source: %d\n",
   irq, ret);
  return ret;
 }

 if (spi->max_speed_hz)
  wm0010->board_max_spi_speed = spi->max_speed_hz;
 else
  wm0010->board_max_spi_speed = 0;

 ret = devm_snd_soc_register_component(&spi->dev,
         &soc_component_dev_wm0010, wm0010_dai,
         ARRAY_SIZE(wm0010_dai));
 if (ret < 0)
  return ret;

 return 0;
}
