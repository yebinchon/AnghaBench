
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_fw {struct sst_dsp* dsp; } ;
struct sst_dsp {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* parse_fw ) (struct sst_fw*) ;} ;


 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int stub1 (struct sst_fw*) ;

int sst_fw_reload(struct sst_fw *sst_fw)
{
 struct sst_dsp *dsp = sst_fw->dsp;
 int ret;

 dev_dbg(dsp->dev, "reloading firmware\n");


 ret = dsp->ops->parse_fw(sst_fw);
 if (ret < 0)
  dev_err(dsp->dev, "error: parse fw failed %d\n", ret);

 return ret;
}
