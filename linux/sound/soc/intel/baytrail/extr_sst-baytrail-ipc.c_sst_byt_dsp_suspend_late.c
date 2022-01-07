
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_pdata {struct sst_byt* dsp; } ;
struct sst_byt {int fw; int dev; int ipc; int dsp; } ;
struct device {int dummy; } ;


 int dev_dbg (int ,char*) ;
 int sst_dsp_reset (int ) ;
 int sst_fw_unload (int ) ;
 int sst_ipc_drop_all (int *) ;

int sst_byt_dsp_suspend_late(struct device *dev, struct sst_pdata *pdata)
{
 struct sst_byt *byt = pdata->dsp;

 dev_dbg(byt->dev, "dsp reset\n");
 sst_dsp_reset(byt->dsp);
 sst_ipc_drop_all(&byt->ipc);
 dev_dbg(byt->dev, "dsp in reset\n");

 dev_dbg(byt->dev, "free all blocks and unload fw\n");
 sst_fw_unload(byt->fw);

 return 0;
}
