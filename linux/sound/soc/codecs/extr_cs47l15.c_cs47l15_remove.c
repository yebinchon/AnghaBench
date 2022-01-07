
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_4__ {int madera; int * adsp; } ;
struct cs47l15 {TYPE_1__ core; } ;


 int MADERA_IRQ_DSP_IRQ1 ;
 int madera_core_free (TYPE_1__*) ;
 int madera_free_bus_error_irq (TYPE_1__*,int ) ;
 int madera_free_irq (int ,int ,struct cs47l15*) ;
 int madera_free_overheat (TYPE_1__*) ;
 int madera_set_irq_wake (int ,int ,int ) ;
 struct cs47l15* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int wm_adsp2_remove (int *) ;

__attribute__((used)) static int cs47l15_remove(struct platform_device *pdev)
{
 struct cs47l15 *cs47l15 = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);

 madera_free_bus_error_irq(&cs47l15->core, 0);

 wm_adsp2_remove(&cs47l15->core.adsp[0]);

 madera_set_irq_wake(cs47l15->core.madera, MADERA_IRQ_DSP_IRQ1, 0);
 madera_free_irq(cs47l15->core.madera, MADERA_IRQ_DSP_IRQ1, cs47l15);
 madera_free_overheat(&cs47l15->core);
 madera_core_free(&cs47l15->core);

 return 0;
}
