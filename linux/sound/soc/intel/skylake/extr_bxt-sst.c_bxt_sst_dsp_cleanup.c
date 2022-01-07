
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skl_dev {TYPE_2__* dsp; int ipc; int lib_count; int lib_info; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; scalar_t__ fw; } ;
struct TYPE_3__ {int (* free ) (TYPE_2__*) ;} ;


 int release_firmware (scalar_t__) ;
 int skl_freeup_uuid_list (struct skl_dev*) ;
 int skl_ipc_free (int *) ;
 int skl_release_library (int ,int ) ;
 int stub1 (TYPE_2__*) ;

void bxt_sst_dsp_cleanup(struct device *dev, struct skl_dev *skl)
{

 skl_release_library(skl->lib_info, skl->lib_count);
 if (skl->dsp->fw)
  release_firmware(skl->dsp->fw);
 skl_freeup_uuid_list(skl);
 skl_ipc_free(&skl->ipc);
 skl->dsp->ops->free(skl->dsp);
}
