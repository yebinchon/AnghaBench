
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_pdata {int * fw; int pdev_mach; } ;
struct snd_sof_dev {int probe_work; struct snd_sof_pdata* pdata; } ;
struct device {int dummy; } ;


 int CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE ;
 scalar_t__ IS_ENABLED (int ) ;
 int IS_ERR_OR_NULL (int ) ;
 int cancel_work_sync (int *) ;
 struct snd_sof_dev* dev_get_drvdata (struct device*) ;
 int platform_device_unregister (int ) ;
 int release_firmware (int *) ;
 int snd_sof_free_debug (struct snd_sof_dev*) ;
 int snd_sof_free_trace (struct snd_sof_dev*) ;
 int snd_sof_fw_unload (struct snd_sof_dev*) ;
 int snd_sof_ipc_free (struct snd_sof_dev*) ;
 int snd_sof_remove (struct snd_sof_dev*) ;

int snd_sof_device_remove(struct device *dev)
{
 struct snd_sof_dev *sdev = dev_get_drvdata(dev);
 struct snd_sof_pdata *pdata = sdev->pdata;

 if (IS_ENABLED(CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE))
  cancel_work_sync(&sdev->probe_work);

 snd_sof_fw_unload(sdev);
 snd_sof_ipc_free(sdev);
 snd_sof_free_debug(sdev);
 snd_sof_free_trace(sdev);






 if (!IS_ERR_OR_NULL(pdata->pdev_mach))
  platform_device_unregister(pdata->pdev_mach);







 snd_sof_remove(sdev);


 release_firmware(pdata->fw);
 pdata->fw = ((void*)0);

 return 0;
}
