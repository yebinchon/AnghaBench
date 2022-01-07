
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra20_ac97 {int clk_ac97; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 struct tegra20_ac97* dev_get_drvdata (int *) ;
 int snd_soc_set_ac97_ops (int *) ;
 int snd_soc_unregister_component (int *) ;
 int tegra_pcm_platform_unregister (int *) ;

__attribute__((used)) static int tegra20_ac97_platform_remove(struct platform_device *pdev)
{
 struct tegra20_ac97 *ac97 = dev_get_drvdata(&pdev->dev);

 tegra_pcm_platform_unregister(&pdev->dev);
 snd_soc_unregister_component(&pdev->dev);

 clk_disable_unprepare(ac97->clk_ac97);

 snd_soc_set_ac97_ops(((void*)0));

 return 0;
}
