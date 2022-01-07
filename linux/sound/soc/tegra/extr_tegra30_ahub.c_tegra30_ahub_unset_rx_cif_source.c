
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum tegra30_ahub_rxcif { ____Placeholder_tegra30_ahub_rxcif } tegra30_ahub_rxcif ;
struct TYPE_2__ {int dev; } ;


 int TEGRA30_AHUB_AUDIO_RX ;
 int TEGRA30_AHUB_AUDIO_RX_STRIDE ;
 int TEGRA30_AHUB_RXCIF_APBIF_RX0 ;
 TYPE_1__* ahub ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int tegra30_audio_write (int,int ) ;

int tegra30_ahub_unset_rx_cif_source(enum tegra30_ahub_rxcif rxcif)
{
 int channel = rxcif - TEGRA30_AHUB_RXCIF_APBIF_RX0;
 int reg;

 pm_runtime_get_sync(ahub->dev);

 reg = TEGRA30_AHUB_AUDIO_RX +
       (channel * TEGRA30_AHUB_AUDIO_RX_STRIDE);
 tegra30_audio_write(reg, 0);

 pm_runtime_put(ahub->dev);

 return 0;
}
