
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * adsp; struct arizona* arizona; } ;
struct wm5110_priv {TYPE_1__ core; } ;
struct platform_device {int dev; } ;
struct arizona {int dummy; } ;


 int ARIZONA_IRQ_DSP_IRQ1 ;
 int WM5110_NUM_ADSP ;
 int arizona_free_irq (struct arizona*,int ,struct wm5110_priv*) ;
 int arizona_free_spk_irqs (struct arizona*) ;
 int arizona_set_irq_wake (struct arizona*,int ,int ) ;
 struct wm5110_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int wm_adsp2_remove (int *) ;

__attribute__((used)) static int wm5110_remove(struct platform_device *pdev)
{
 struct wm5110_priv *wm5110 = platform_get_drvdata(pdev);
 struct arizona *arizona = wm5110->core.arizona;
 int i;

 pm_runtime_disable(&pdev->dev);

 for (i = 0; i < WM5110_NUM_ADSP; i++)
  wm_adsp2_remove(&wm5110->core.adsp[i]);

 arizona_free_spk_irqs(arizona);

 arizona_set_irq_wake(arizona, ARIZONA_IRQ_DSP_IRQ1, 0);
 arizona_free_irq(arizona, ARIZONA_IRQ_DSP_IRQ1, wm5110);

 return 0;
}
