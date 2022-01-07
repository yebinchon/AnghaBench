
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int * adsp; struct arizona* arizona; } ;
struct cs47l24_priv {TYPE_1__ core; } ;
struct arizona {int dummy; } ;


 int ARIZONA_IRQ_DSP_IRQ1 ;
 int arizona_free_irq (struct arizona*,int ,struct cs47l24_priv*) ;
 int arizona_free_spk_irqs (struct arizona*) ;
 int arizona_set_irq_wake (struct arizona*,int ,int ) ;
 struct cs47l24_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int wm_adsp2_remove (int *) ;

__attribute__((used)) static int cs47l24_remove(struct platform_device *pdev)
{
 struct cs47l24_priv *cs47l24 = platform_get_drvdata(pdev);
 struct arizona *arizona = cs47l24->core.arizona;

 pm_runtime_disable(&pdev->dev);

 wm_adsp2_remove(&cs47l24->core.adsp[1]);
 wm_adsp2_remove(&cs47l24->core.adsp[2]);

 arizona_free_spk_irqs(arizona);

 arizona_set_irq_wake(arizona, ARIZONA_IRQ_DSP_IRQ1, 0);
 arizona_free_irq(arizona, ARIZONA_IRQ_DSP_IRQ1, cs47l24);

 return 0;
}
