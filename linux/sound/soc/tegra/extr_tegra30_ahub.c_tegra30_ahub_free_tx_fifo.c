
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum tegra30_ahub_txcif { ____Placeholder_tegra30_ahub_txcif } tegra30_ahub_txcif ;
struct TYPE_2__ {int tx_usage; } ;


 int TEGRA30_AHUB_TXCIF_APBIF_TX0 ;
 int __clear_bit (int,int ) ;
 TYPE_1__* ahub ;

int tegra30_ahub_free_tx_fifo(enum tegra30_ahub_txcif txcif)
{
 int channel = txcif - TEGRA30_AHUB_TXCIF_APBIF_TX0;

 __clear_bit(channel, ahub->tx_usage);

 return 0;
}
