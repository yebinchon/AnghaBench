
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_pdata {scalar_t__ fw; int fw_filename; int fw_filename_prefix; } ;
struct snd_sof_dev {int code_loading; int dev; struct snd_sof_pdata* pdata; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*,char const*,int) ;
 char* kasprintf (int ,char*,int ,int ) ;
 int kfree (char const*) ;
 int request_firmware (scalar_t__*,char const*,int ) ;

int snd_sof_load_firmware_raw(struct snd_sof_dev *sdev)
{
 struct snd_sof_pdata *plat_data = sdev->pdata;
 const char *fw_filename;
 int ret;


 sdev->code_loading = 1;


 if (plat_data->fw)
  return 0;

 fw_filename = kasprintf(GFP_KERNEL, "%s/%s",
    plat_data->fw_filename_prefix,
    plat_data->fw_filename);
 if (!fw_filename)
  return -ENOMEM;

 ret = request_firmware(&plat_data->fw, fw_filename, sdev->dev);

 if (ret < 0) {
  dev_err(sdev->dev, "error: request firmware %s failed err: %d\n",
   fw_filename, ret);
 }

 kfree(fw_filename);

 return ret;
}
