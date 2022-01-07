
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* load_fw ) (struct sst_dsp*) ;} ;
struct sst_dsp {TYPE_1__ fw_ops; } ;
struct skl_dev {int is_first_boot; struct sst_dsp* dsp; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int) ;
 int skl_dsp_init_core_state (struct sst_dsp*) ;
 int stub1 (struct sst_dsp*) ;

int cnl_sst_init_fw(struct device *dev, struct skl_dev *skl)
{
 int ret;
 struct sst_dsp *sst = skl->dsp;

 ret = skl->dsp->fw_ops.load_fw(sst);
 if (ret < 0) {
  dev_err(dev, "load base fw failed: %d", ret);
  return ret;
 }

 skl_dsp_init_core_state(sst);

 skl->is_first_boot = 0;

 return 0;
}
