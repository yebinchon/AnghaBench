
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_fsi_port_info {scalar_t__ tx_id; } ;
struct TYPE_3__ {int * handler; scalar_t__ dma_id; struct fsi_priv* priv; } ;
struct TYPE_4__ {struct fsi_priv* priv; int * handler; } ;
struct fsi_priv {TYPE_1__ playback; TYPE_2__ capture; } ;


 int fsi_dma_push_handler ;
 int fsi_pio_pop_handler ;
 int fsi_pio_push_handler ;

__attribute__((used)) static void fsi_handler_init(struct fsi_priv *fsi,
        struct sh_fsi_port_info *info)
{
 fsi->playback.handler = &fsi_pio_push_handler;
 fsi->playback.priv = fsi;
 fsi->capture.handler = &fsi_pio_pop_handler;
 fsi->capture.priv = fsi;

 if (info->tx_id) {
  fsi->playback.dma_id = info->tx_id;
  fsi->playback.handler = &fsi_dma_push_handler;
 }
}
