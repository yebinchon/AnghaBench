
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct arizona* arizona; } ;
struct wm8997_priv {TYPE_1__ core; } ;
struct platform_device {int dev; } ;
struct arizona {int dummy; } ;


 int arizona_free_spk_irqs (struct arizona*) ;
 struct wm8997_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int wm8997_remove(struct platform_device *pdev)
{
 struct wm8997_priv *wm8997 = platform_get_drvdata(pdev);
 struct arizona *arizona = wm8997->core.arizona;

 pm_runtime_disable(&pdev->dev);

 arizona_free_spk_irqs(arizona);

 return 0;
}
