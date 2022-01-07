
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra30_i2s {int clk_i2s; int playback_fifo_cif; int playback_i2s_cif; int capture_fifo_cif; } ;
struct platform_device {int dev; } ;


 int clk_put (int ) ;
 struct tegra30_i2s* dev_get_drvdata (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;
 int snd_soc_unregister_component (int *) ;
 int tegra30_ahub_free_rx_fifo (int ) ;
 int tegra30_ahub_free_tx_fifo (int ) ;
 int tegra30_ahub_unset_rx_cif_source (int ) ;
 int tegra30_i2s_runtime_suspend (int *) ;
 int tegra_pcm_platform_unregister (int *) ;

__attribute__((used)) static int tegra30_i2s_platform_remove(struct platform_device *pdev)
{
 struct tegra30_i2s *i2s = dev_get_drvdata(&pdev->dev);

 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  tegra30_i2s_runtime_suspend(&pdev->dev);

 tegra_pcm_platform_unregister(&pdev->dev);
 snd_soc_unregister_component(&pdev->dev);

 tegra30_ahub_unset_rx_cif_source(i2s->capture_fifo_cif);
 tegra30_ahub_free_rx_fifo(i2s->capture_fifo_cif);

 tegra30_ahub_unset_rx_cif_source(i2s->playback_i2s_cif);
 tegra30_ahub_free_tx_fifo(i2s->playback_fifo_cif);

 clk_put(i2s->clk_i2s);

 return 0;
}
