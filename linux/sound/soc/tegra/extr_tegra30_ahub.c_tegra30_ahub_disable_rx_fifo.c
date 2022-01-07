
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum tegra30_ahub_rxcif { ____Placeholder_tegra30_ahub_rxcif } tegra30_ahub_rxcif ;
struct TYPE_2__ {int dev; } ;


 int TEGRA30_AHUB_CHANNEL_CTRL ;
 int TEGRA30_AHUB_CHANNEL_CTRL_RX_EN ;
 int TEGRA30_AHUB_CHANNEL_CTRL_STRIDE ;
 int TEGRA30_AHUB_RXCIF_APBIF_RX0 ;
 TYPE_1__* ahub ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int tegra30_apbif_read (int) ;
 int tegra30_apbif_write (int,int) ;

int tegra30_ahub_disable_rx_fifo(enum tegra30_ahub_rxcif rxcif)
{
 int channel = rxcif - TEGRA30_AHUB_RXCIF_APBIF_RX0;
 int reg, val;

 pm_runtime_get_sync(ahub->dev);

 reg = TEGRA30_AHUB_CHANNEL_CTRL +
       (channel * TEGRA30_AHUB_CHANNEL_CTRL_STRIDE);
 val = tegra30_apbif_read(reg);
 val &= ~TEGRA30_AHUB_CHANNEL_CTRL_RX_EN;
 tegra30_apbif_write(reg, val);

 pm_runtime_put(ahub->dev);

 return 0;
}
