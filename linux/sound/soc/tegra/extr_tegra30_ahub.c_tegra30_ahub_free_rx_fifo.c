
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum tegra30_ahub_rxcif { ____Placeholder_tegra30_ahub_rxcif } tegra30_ahub_rxcif ;
struct TYPE_2__ {int rx_usage; } ;


 int TEGRA30_AHUB_RXCIF_APBIF_RX0 ;
 int __clear_bit (int,int ) ;
 TYPE_1__* ahub ;

int tegra30_ahub_free_rx_fifo(enum tegra30_ahub_rxcif rxcif)
{
 int channel = rxcif - TEGRA30_AHUB_RXCIF_APBIF_RX0;

 __clear_bit(channel, ahub->rx_usage);

 return 0;
}
