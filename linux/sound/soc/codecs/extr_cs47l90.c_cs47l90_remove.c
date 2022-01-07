
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int madera; int * adsp; } ;
struct cs47l90 {TYPE_1__ core; } ;


 int CS47L90_NUM_ADSP ;
 int MADERA_IRQ_DSP_IRQ1 ;
 int madera_core_free (TYPE_1__*) ;
 int madera_free_bus_error_irq (TYPE_1__*,int) ;
 int madera_free_irq (int ,int ,struct cs47l90*) ;
 int madera_set_irq_wake (int ,int ,int ) ;
 struct cs47l90* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int wm_adsp2_remove (int *) ;

__attribute__((used)) static int cs47l90_remove(struct platform_device *pdev)
{
 struct cs47l90 *cs47l90 = platform_get_drvdata(pdev);
 int i;

 pm_runtime_disable(&pdev->dev);

 for (i = 0; i < CS47L90_NUM_ADSP; i++) {
  madera_free_bus_error_irq(&cs47l90->core, i);
  wm_adsp2_remove(&cs47l90->core.adsp[i]);
 }

 madera_set_irq_wake(cs47l90->core.madera, MADERA_IRQ_DSP_IRQ1, 0);
 madera_free_irq(cs47l90->core.madera, MADERA_IRQ_DSP_IRQ1, cs47l90);
 madera_core_free(&cs47l90->core);

 return 0;
}
