
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_pdata {int * fw; } ;
struct snd_sof_dev {int dev; struct snd_sof_pdata* pdata; } ;


 int check_header (struct snd_sof_dev*,int *) ;
 int dev_err (int ,char*) ;
 int load_modules (struct snd_sof_dev*,int *) ;
 int release_firmware (int *) ;
 int snd_sof_dsp_reset (struct snd_sof_dev*) ;
 int snd_sof_load_firmware_raw (struct snd_sof_dev*) ;

int snd_sof_load_firmware_memcpy(struct snd_sof_dev *sdev)
{
 struct snd_sof_pdata *plat_data = sdev->pdata;
 int ret;

 ret = snd_sof_load_firmware_raw(sdev);
 if (ret < 0)
  return ret;


 ret = check_header(sdev, plat_data->fw);
 if (ret < 0) {
  dev_err(sdev->dev, "error: invalid FW header\n");
  goto error;
 }


 ret = snd_sof_dsp_reset(sdev);
 if (ret < 0) {
  dev_err(sdev->dev, "error: failed to reset DSP\n");
  goto error;
 }


 ret = load_modules(sdev, plat_data->fw);
 if (ret < 0) {
  dev_err(sdev->dev, "error: invalid FW modules\n");
  goto error;
 }

 return 0;

error:
 release_firmware(plat_data->fw);
 plat_data->fw = ((void*)0);
 return ret;

}
