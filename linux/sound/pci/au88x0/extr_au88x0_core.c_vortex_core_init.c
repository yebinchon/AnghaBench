
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int lock; TYPE_1__* card; int mmio; } ;
typedef TYPE_2__ vortex_t ;
struct TYPE_15__ {int dev; } ;


 int VORTEX_CTRL ;
 int VORTEX_ENGINE_CTRL ;
 int VORTEX_IRQ_SOURCE ;
 int VORTEX_IRQ_STAT ;
 int dev_info (int ,char*) ;
 int hwread (int ,int ) ;
 int hwwrite (int ,int ,int) ;
 int msleep (int) ;
 int spin_lock_init (int *) ;
 int vortex_Vort3D_enable (TYPE_2__*) ;
 int vortex_adb_init (TYPE_2__*) ;
 int vortex_adbdma_init (TYPE_2__*) ;
 int vortex_codec_init (TYPE_2__*) ;
 int vortex_eq_init (TYPE_2__*) ;
 int vortex_fifo_init (TYPE_2__*) ;
 int vortex_mixer_init (TYPE_2__*) ;
 int vortex_settimer (TYPE_2__*,int) ;
 int vortex_spdif_init (TYPE_2__*,int,int) ;
 int vortex_srcblock_init (TYPE_2__*) ;
 int vortex_wt_init (TYPE_2__*) ;

__attribute__((used)) static int vortex_core_init(vortex_t *vortex)
{

 dev_info(vortex->card->dev, "init started\n");

 hwwrite(vortex->mmio, VORTEX_CTRL, 0xffffffff);
 msleep(5);
 hwwrite(vortex->mmio, VORTEX_CTRL,
  hwread(vortex->mmio, VORTEX_CTRL) & 0xffdfffff);
 msleep(5);

 hwwrite(vortex->mmio, VORTEX_IRQ_SOURCE, 0xffffffff);
 hwread(vortex->mmio, VORTEX_IRQ_STAT);

 vortex_codec_init(vortex);







 vortex_adbdma_init(vortex);
 hwwrite(vortex->mmio, VORTEX_ENGINE_CTRL, 0x0);
 vortex_adb_init(vortex);

 vortex_fifo_init(vortex);
 vortex_mixer_init(vortex);
 vortex_srcblock_init(vortex);

 vortex_eq_init(vortex);
 vortex_spdif_init(vortex, 48000, 1);
 vortex_Vort3D_enable(vortex);


 vortex_wt_init(vortex);




 vortex_settimer(vortex, 0x90);







 dev_info(vortex->card->dev, "init.... done.\n");
 spin_lock_init(&vortex->lock);

 return 0;
}
