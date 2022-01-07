
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dev; int component; } ;
struct firmware {int dummy; } ;


 int EINVAL ;
 int SND_SOC_TPLG_INDEX_ALL ;
 int dev_dbg (int ,char*,char const*) ;
 int dev_err (int ,char*,...) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int ) ;
 int snd_soc_tplg_component_load (int ,int *,struct firmware const*,int ) ;
 int sof_tplg_ops ;

int snd_sof_load_topology(struct snd_sof_dev *sdev, const char *file)
{
 const struct firmware *fw;
 int ret;

 dev_dbg(sdev->dev, "loading topology:%s\n", file);

 ret = request_firmware(&fw, file, sdev->dev);
 if (ret < 0) {
  dev_err(sdev->dev, "error: tplg request firmware %s failed err: %d\n",
   file, ret);
  return ret;
 }

 ret = snd_soc_tplg_component_load(sdev->component,
       &sof_tplg_ops, fw,
       SND_SOC_TPLG_INDEX_ALL);
 if (ret < 0) {
  dev_err(sdev->dev, "error: tplg component load failed %d\n",
   ret);
  ret = -EINVAL;
 }

 release_firmware(fw);
 return ret;
}
