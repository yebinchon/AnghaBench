
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_dev {int dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int runtime_resume; int resume; } ;


 int SOF_IPC_PM_CTX_RESTORE ;
 int dev_err (int ,char*,...) ;
 struct snd_sof_dev* dev_get_drvdata (struct device*) ;
 int dev_warn (int ,char*,int) ;
 int snd_sof_dsp_resume (struct snd_sof_dev*) ;
 int snd_sof_dsp_runtime_resume (struct snd_sof_dev*) ;
 int snd_sof_init_trace_ipc (struct snd_sof_dev*) ;
 int snd_sof_load_firmware (struct snd_sof_dev*) ;
 int snd_sof_run_firmware (struct snd_sof_dev*) ;
 TYPE_1__* sof_ops (struct snd_sof_dev*) ;
 int sof_restore_pipelines (struct snd_sof_dev*) ;
 int sof_send_pm_ipc (struct snd_sof_dev*,int ) ;

__attribute__((used)) static int sof_resume(struct device *dev, bool runtime_resume)
{
 struct snd_sof_dev *sdev = dev_get_drvdata(dev);
 int ret;


 if (!sof_ops(sdev)->resume || !sof_ops(sdev)->runtime_resume)
  return 0;





 if (runtime_resume)
  ret = snd_sof_dsp_runtime_resume(sdev);
 else
  ret = snd_sof_dsp_resume(sdev);
 if (ret < 0) {
  dev_err(sdev->dev,
   "error: failed to power up DSP after resume\n");
  return ret;
 }


 ret = snd_sof_load_firmware(sdev);
 if (ret < 0) {
  dev_err(sdev->dev,
   "error: failed to load DSP firmware after resume %d\n",
   ret);
  return ret;
 }


 ret = snd_sof_run_firmware(sdev);
 if (ret < 0) {
  dev_err(sdev->dev,
   "error: failed to boot DSP firmware after resume %d\n",
   ret);
  return ret;
 }


 ret = snd_sof_init_trace_ipc(sdev);
 if (ret < 0) {

  dev_warn(sdev->dev,
    "warning: failed to init trace after resume %d\n",
    ret);
 }


 ret = sof_restore_pipelines(sdev);
 if (ret < 0) {
  dev_err(sdev->dev,
   "error: failed to restore pipeline after resume %d\n",
   ret);
  return ret;
 }


 ret = sof_send_pm_ipc(sdev, SOF_IPC_PM_CTX_RESTORE);
 if (ret < 0)
  dev_err(sdev->dev,
   "error: ctx_restore ipc error during resume %d\n",
   ret);

 return ret;
}
