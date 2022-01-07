
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_pdata {int tplg_filename; int tplg_filename_prefix; } ;
struct snd_sof_dev {int dev; struct snd_soc_component* component; struct snd_sof_pdata* pdata; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {int runtime_resume; int runtime_suspend; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*,int) ;
 char* devm_kasprintf (int ,int ,char*,int ,int ) ;
 int pm_runtime_get_noresume (int ) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_sof_load_topology (struct snd_sof_dev*,char const*) ;
 TYPE_1__* sof_ops (struct snd_sof_dev*) ;

__attribute__((used)) static int sof_pcm_probe(struct snd_soc_component *component)
{
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(component);
 struct snd_sof_pdata *plat_data = sdev->pdata;
 const char *tplg_filename;
 int ret;


 sdev->component = component;

 tplg_filename = devm_kasprintf(sdev->dev, GFP_KERNEL,
           "%s/%s",
           plat_data->tplg_filename_prefix,
           plat_data->tplg_filename);
 if (!tplg_filename)
  return -ENOMEM;

 ret = snd_sof_load_topology(sdev, tplg_filename);
 if (ret < 0) {
  dev_err(sdev->dev, "error: failed to load DSP topology %d\n",
   ret);
  return ret;
 }






 if (!sof_ops(sdev)->runtime_suspend || !sof_ops(sdev)->runtime_resume)
  pm_runtime_get_noresume(sdev->dev);

 return ret;
}
