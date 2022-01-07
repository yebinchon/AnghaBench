
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cmd; } ;
struct sof_ipc_dai_config {int type; scalar_t__ format; TYPE_2__ hdr; } ;
struct snd_sof_dev {int dev; } ;
struct snd_soc_tplg_private {int size; int array; } ;
struct snd_soc_tplg_link_config {struct snd_soc_tplg_hw_config* hw_config; int default_hw_config_id; int num_hw_configs; struct snd_soc_tplg_private priv; } ;
struct snd_soc_tplg_hw_config {int fmt; int id; } ;
struct snd_soc_dai_link {int nonatomic; int no_pcm; TYPE_1__* platforms; } ;
struct snd_soc_component {int dummy; } ;
typedef int config ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;






 int SOF_IPC_DAI_CONFIG ;
 int SOF_IPC_GLB_DAI_MSG ;
 int dai_link_tokens ;
 int dev_dbg (int ,char*,int ,scalar_t__) ;
 int dev_err (int ,char*,...) ;
 int dev_name (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memset (struct sof_ipc_dai_config*,int ,int) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int sof_link_alh_load (struct snd_soc_component*,int,struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*,struct snd_soc_tplg_hw_config*,struct sof_ipc_dai_config*) ;
 int sof_link_dmic_load (struct snd_soc_component*,int,struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*,struct snd_soc_tplg_hw_config*,struct sof_ipc_dai_config*) ;
 int sof_link_esai_load (struct snd_soc_component*,int,struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*,struct snd_soc_tplg_hw_config*,struct sof_ipc_dai_config*) ;
 int sof_link_hda_load (struct snd_soc_component*,int,struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*,struct snd_soc_tplg_hw_config*,struct sof_ipc_dai_config*) ;
 int sof_link_sai_load (struct snd_soc_component*,int,struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*,struct snd_soc_tplg_hw_config*,struct sof_ipc_dai_config*) ;
 int sof_link_ssp_load (struct snd_soc_component*,int,struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*,struct snd_soc_tplg_hw_config*,struct sof_ipc_dai_config*) ;
 int sof_parse_tokens (struct snd_soc_component*,struct sof_ipc_dai_config*,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static int sof_link_load(struct snd_soc_component *scomp, int index,
    struct snd_soc_dai_link *link,
    struct snd_soc_tplg_link_config *cfg)
{
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(scomp);
 struct snd_soc_tplg_private *private = &cfg->priv;
 struct sof_ipc_dai_config config;
 struct snd_soc_tplg_hw_config *hw_config;
 int num_hw_configs;
 int ret;
 int i = 0;

 if (!link->platforms) {
  dev_err(sdev->dev, "error: no platforms\n");
  return -EINVAL;
 }
 link->platforms->name = dev_name(sdev->dev);





 if (!link->no_pcm) {
  link->nonatomic = 1;


  return 0;
 }


 if (le32_to_cpu(private->size) == 0) {
  dev_err(sdev->dev, "error: expected tokens for DAI, none found\n");
  return -EINVAL;
 }


 memset(&config, 0, sizeof(config));


 ret = sof_parse_tokens(scomp, &config, dai_link_tokens,
          ARRAY_SIZE(dai_link_tokens), private->array,
          le32_to_cpu(private->size));
 if (ret != 0) {
  dev_err(sdev->dev, "error: parse link tokens failed %d\n",
   le32_to_cpu(private->size));
  return ret;
 }





 num_hw_configs = le32_to_cpu(cfg->num_hw_configs);
 if (!num_hw_configs) {
  if (config.type != 129) {
   dev_err(sdev->dev, "error: unexpected DAI config count %d!\n",
    le32_to_cpu(cfg->num_hw_configs));
   return -EINVAL;
  }
 } else {
  dev_dbg(sdev->dev, "tplg: %d hw_configs found, default id: %d!\n",
   cfg->num_hw_configs, le32_to_cpu(cfg->default_hw_config_id));

  for (i = 0; i < num_hw_configs; i++) {
   if (cfg->hw_config[i].id == cfg->default_hw_config_id)
    break;
  }

  if (i == num_hw_configs) {
   dev_err(sdev->dev, "error: default hw_config id: %d not found!\n",
    le32_to_cpu(cfg->default_hw_config_id));
   return -EINVAL;
  }
 }


 hw_config = &cfg->hw_config[i];

 config.hdr.cmd = SOF_IPC_GLB_DAI_MSG | SOF_IPC_DAI_CONFIG;
 config.format = le32_to_cpu(hw_config->fmt);


 switch (config.type) {
 case 128:
  ret = sof_link_ssp_load(scomp, index, link, cfg, hw_config,
     &config);
  break;
 case 130:
  ret = sof_link_dmic_load(scomp, index, link, cfg, hw_config,
      &config);
  break;
 case 129:
  ret = sof_link_hda_load(scomp, index, link, cfg, hw_config,
     &config);
  break;
 case 131:
  ret = sof_link_alh_load(scomp, index, link, cfg, hw_config,
     &config);
  break;
 case 132:
  ret = sof_link_sai_load(scomp, index, link, cfg, hw_config,
     &config);
  break;
 case 133:
  ret = sof_link_esai_load(scomp, index, link, cfg, hw_config,
      &config);
  break;
 default:
  dev_err(sdev->dev, "error: invalid DAI type %d\n", config.type);
  ret = -EINVAL;
  break;
 }
 if (ret < 0)
  return ret;

 return 0;
}
