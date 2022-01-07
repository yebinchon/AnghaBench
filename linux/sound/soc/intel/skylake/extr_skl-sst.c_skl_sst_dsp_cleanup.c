
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct skl_dev {TYPE_4__* dsp; scalar_t__ boot_complete; int ipc; } ;
struct device {int dummy; } ;
struct TYPE_9__ {int (* cl_cleanup_controller ) (TYPE_4__*) ;} ;
struct TYPE_10__ {TYPE_2__ ops; } ;
struct TYPE_11__ {TYPE_3__ cl_dev; TYPE_1__* ops; scalar_t__ fw; } ;
struct TYPE_8__ {int (* free ) (TYPE_4__*) ;} ;


 int release_firmware (scalar_t__) ;
 int skl_cldma_int_disable (TYPE_4__*) ;
 int skl_clear_module_table (TYPE_4__*) ;
 int skl_freeup_uuid_list (struct skl_dev*) ;
 int skl_ipc_free (int *) ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_4__*) ;

void skl_sst_dsp_cleanup(struct device *dev, struct skl_dev *skl)
{

 if (skl->dsp->fw)
  release_firmware(skl->dsp->fw);
 skl_clear_module_table(skl->dsp);
 skl_freeup_uuid_list(skl);
 skl_ipc_free(&skl->ipc);
 skl->dsp->ops->free(skl->dsp);
 if (skl->boot_complete) {
  skl->dsp->cl_dev.ops.cl_cleanup_controller(skl->dsp);
  skl_cldma_int_disable(skl->dsp);
 }
}
