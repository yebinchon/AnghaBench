
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm0010_priv {scalar_t__ irq; int gpio_reset_value; int gpio_reset; } ;
struct spi_device {int dummy; } ;


 int free_irq (scalar_t__,struct wm0010_priv*) ;
 int gpio_set_value_cansleep (int ,int ) ;
 int irq_set_irq_wake (scalar_t__,int ) ;
 struct wm0010_priv* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int wm0010_spi_remove(struct spi_device *spi)
{
 struct wm0010_priv *wm0010 = spi_get_drvdata(spi);

 gpio_set_value_cansleep(wm0010->gpio_reset,
    wm0010->gpio_reset_value);

 irq_set_irq_wake(wm0010->irq, 0);

 if (wm0010->irq)
  free_irq(wm0010->irq, wm0010);

 return 0;
}
