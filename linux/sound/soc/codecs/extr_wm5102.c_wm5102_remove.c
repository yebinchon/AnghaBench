
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * adsp; struct arizona* arizona; } ;
struct wm5102_priv {TYPE_1__ core; } ;
struct platform_device {int dev; } ;
struct arizona {int dummy; } ;


 int ARIZONA_IRQ_DSP_IRQ1 ;
 int arizona_free_irq (struct arizona*,int ,struct wm5102_priv*) ;
 int arizona_free_spk_irqs (struct arizona*) ;
 int arizona_set_irq_wake (struct arizona*,int ,int ) ;
 struct wm5102_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int wm_adsp2_remove (int *) ;

__attribute__((used)) static int wm5102_remove(struct platform_device *pdev)
{
 struct wm5102_priv *wm5102 = platform_get_drvdata(pdev);
 struct arizona *arizona = wm5102->core.arizona;

 pm_runtime_disable(&pdev->dev);

 wm_adsp2_remove(&wm5102->core.adsp[0]);

 arizona_free_spk_irqs(arizona);

 arizona_set_irq_wake(arizona, ARIZONA_IRQ_DSP_IRQ1, 0);
 arizona_free_irq(arizona, ARIZONA_IRQ_DSP_IRQ1, wm5102);

 return 0;
}
