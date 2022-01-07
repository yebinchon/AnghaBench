
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* card; int mmio; } ;
typedef TYPE_2__ vortex_t ;
struct TYPE_10__ {int dev; } ;


 int VORTEX_CTRL ;
 int VORTEX_IRQ_CTRL ;
 int VORTEX_IRQ_SOURCE ;
 int dev_info (int ,char*) ;
 int hwwrite (int ,int ,int) ;
 int msleep (int) ;
 int vortex_Vort3D_disable (TYPE_2__*) ;
 int vortex_adb_init (TYPE_2__*) ;
 int vortex_connect_default (TYPE_2__*,int ) ;
 int vortex_disable_int (TYPE_2__*) ;
 int vortex_eq_free (TYPE_2__*) ;
 int vortex_fifo_init (TYPE_2__*) ;

__attribute__((used)) static int vortex_core_shutdown(vortex_t * vortex)
{

 dev_info(vortex->card->dev, "shutdown started\n");

 vortex_eq_free(vortex);
 vortex_Vort3D_disable(vortex);


 vortex_disable_int(vortex);
 vortex_connect_default(vortex, 0);

 vortex_fifo_init(vortex);

 vortex_adb_init(vortex);





 hwwrite(vortex->mmio, VORTEX_IRQ_CTRL, 0);
 hwwrite(vortex->mmio, VORTEX_CTRL, 0);
 msleep(5);
 hwwrite(vortex->mmio, VORTEX_IRQ_SOURCE, 0xffff);

 dev_info(vortex->card->dev, "shutdown.... done.\n");
 return 0;
}
