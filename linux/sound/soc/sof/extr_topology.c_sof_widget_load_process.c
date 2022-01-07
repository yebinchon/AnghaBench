
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sof_ipc_comp_reply {int dummy; } ;
struct sof_ipc_comp_process {int type; } ;
struct snd_sof_widget {int dummy; } ;
struct snd_sof_dev {int dev; } ;
struct snd_soc_tplg_private {int size; int array; } ;
struct snd_soc_tplg_dapm_widget {struct snd_soc_tplg_private priv; } ;
struct snd_soc_component {int dummy; } ;
typedef int config ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int dev_err (int ,char*,...) ;
 int find_process_comp_type (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memset (struct sof_ipc_comp_process*,int ,int) ;
 int process_tokens ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int sof_parse_tokens (struct snd_soc_component*,struct sof_ipc_comp_process*,int ,int ,int ,scalar_t__) ;
 int sof_process_load (struct snd_soc_component*,int,struct snd_sof_widget*,struct snd_soc_tplg_dapm_widget*,struct sof_ipc_comp_reply*,int ) ;

__attribute__((used)) static int sof_widget_load_process(struct snd_soc_component *scomp, int index,
       struct snd_sof_widget *swidget,
       struct snd_soc_tplg_dapm_widget *tw,
       struct sof_ipc_comp_reply *r)
{
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(scomp);
 struct snd_soc_tplg_private *private = &tw->priv;
 struct sof_ipc_comp_process config;
 int ret;


 if (le32_to_cpu(private->size) == 0) {
  dev_err(sdev->dev, "error: process tokens not found\n");
  return -EINVAL;
 }

 memset(&config, 0, sizeof(config));


 ret = sof_parse_tokens(scomp, &config, process_tokens,
          ARRAY_SIZE(process_tokens), private->array,
          le32_to_cpu(private->size));
 if (ret != 0) {
  dev_err(sdev->dev, "error: parse process tokens failed %d\n",
   le32_to_cpu(private->size));
  return ret;
 }


 ret = sof_process_load(scomp, index, swidget, tw, r,
          find_process_comp_type(config.type));
 if (ret < 0) {
  dev_err(sdev->dev, "error: process loading failed\n");
  return ret;
 }

 return 0;
}
