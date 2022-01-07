
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum tegra30_ahub_txcif { ____Placeholder_tegra30_ahub_txcif } tegra30_ahub_txcif ;
struct TYPE_2__ {int dev; } ;


 int TEGRA30_AHUB_CHANNEL_CTRL ;
 int TEGRA30_AHUB_CHANNEL_CTRL_STRIDE ;
 int TEGRA30_AHUB_CHANNEL_CTRL_TX_EN ;
 int TEGRA30_AHUB_TXCIF_APBIF_TX0 ;
 TYPE_1__* ahub ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int tegra30_apbif_read (int) ;
 int tegra30_apbif_write (int,int) ;

int tegra30_ahub_disable_tx_fifo(enum tegra30_ahub_txcif txcif)
{
 int channel = txcif - TEGRA30_AHUB_TXCIF_APBIF_TX0;
 int reg, val;

 pm_runtime_get_sync(ahub->dev);

 reg = TEGRA30_AHUB_CHANNEL_CTRL +
       (channel * TEGRA30_AHUB_CHANNEL_CTRL_STRIDE);
 val = tegra30_apbif_read(reg);
 val &= ~TEGRA30_AHUB_CHANNEL_CTRL_TX_EN;
 tegra30_apbif_write(reg, val);

 pm_runtime_put(ahub->dev);

 return 0;
}
