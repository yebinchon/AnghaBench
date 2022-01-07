
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skl_dev {TYPE_2__* dsp; int ipc; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; scalar_t__ fw; } ;
struct TYPE_3__ {int (* free ) (TYPE_2__*) ;} ;


 int cnl_ipc_free (int *) ;
 int release_firmware (scalar_t__) ;
 int skl_freeup_uuid_list (struct skl_dev*) ;
 int stub1 (TYPE_2__*) ;

void cnl_sst_dsp_cleanup(struct device *dev, struct skl_dev *skl)
{
 if (skl->dsp->fw)
  release_firmware(skl->dsp->fw);

 skl_freeup_uuid_list(skl);
 cnl_ipc_free(&skl->ipc);

 skl->dsp->ops->free(skl->dsp);
}
