
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int GCR ;
 int GCR_ACLINK_OFF ;
 int IRQ_AC97 ;
 int * ac97_clk ;
 int * ac97conf_clk ;
 int clk_disable_unprepare (int *) ;
 int clk_put (int *) ;
 scalar_t__ cpu_is_pxa27x () ;
 int free_irq (int ,int *) ;
 int gpio_free (int ) ;
 int reset_gpio ;

void pxa2xx_ac97_hw_remove(struct platform_device *dev)
{
 if (cpu_is_pxa27x())
  gpio_free(reset_gpio);
 GCR |= GCR_ACLINK_OFF;
 free_irq(IRQ_AC97, ((void*)0));
 if (ac97conf_clk) {
  clk_put(ac97conf_clk);
  ac97conf_clk = ((void*)0);
 }
 clk_disable_unprepare(ac97_clk);
 clk_put(ac97_clk);
 ac97_clk = ((void*)0);
}
