
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_pdata {struct sst_byt* dsp; } ;
struct sst_byt {int boot_complete; int dev; int dsp; int fw; } ;
struct device {int dummy; } ;


 int dev_dbg (int ,char*) ;
 int dev_err (struct device*,char*) ;
 int sst_dsp_boot (int ) ;
 int sst_dsp_reset (int ) ;
 int sst_fw_reload (int ) ;

int sst_byt_dsp_boot(struct device *dev, struct sst_pdata *pdata)
{
 struct sst_byt *byt = pdata->dsp;
 int ret;

 dev_dbg(byt->dev, "reload dsp fw\n");

 sst_dsp_reset(byt->dsp);

 ret = sst_fw_reload(byt->fw);
 if (ret < 0) {
  dev_err(dev, "error: failed to reload firmware\n");
  return ret;
 }


 byt->boot_complete = 0;
 sst_dsp_boot(byt->dsp);
 dev_dbg(byt->dev, "dsp booting...\n");

 return 0;
}
