
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* load_fw ) (struct sst_dsp*) ;int (* load_library ) (struct sst_dsp*,int ,int) ;} ;
struct sst_dsp {TYPE_1__ fw_ops; } ;
struct skl_dev {int lib_count; int is_first_boot; int lib_info; struct sst_dsp* dsp; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int) ;
 int skl_dsp_init_core_state (struct sst_dsp*) ;
 int stub1 (struct sst_dsp*) ;
 int stub2 (struct sst_dsp*,int ,int) ;

int bxt_sst_init_fw(struct device *dev, struct skl_dev *skl)
{
 int ret;
 struct sst_dsp *sst = skl->dsp;

 ret = sst->fw_ops.load_fw(sst);
 if (ret < 0) {
  dev_err(dev, "Load base fw failed: %x\n", ret);
  return ret;
 }

 skl_dsp_init_core_state(sst);

 if (skl->lib_count > 1) {
  ret = sst->fw_ops.load_library(sst, skl->lib_info,
      skl->lib_count);
  if (ret < 0) {
   dev_err(dev, "Load Library failed : %x\n", ret);
   return ret;
  }
 }
 skl->is_first_boot = 0;

 return 0;
}
