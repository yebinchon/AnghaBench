
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sof_ipc_reply {int dummy; } ;
struct sof_ipc_dai_ssp_params {int dummy; } ;
struct TYPE_4__ {int size; int cmd; } ;
struct TYPE_5__ {int fsync_rate; int tdm_slots; int quirks; int mclk_id; void* tdm_slot_width; int sample_valid_bits; void* bclk_rate; void* mclk_rate; void* tx_slots; void* rx_slots; int mclk_direction; } ;
struct sof_ipc_dai_config {void* dai_index; TYPE_1__ hdr; TYPE_2__ ssp; int format; } ;
struct snd_sof_dev {int dev; int ipc; } ;
struct snd_soc_tplg_private {int size; int array; } ;
struct snd_soc_tplg_link_config {struct snd_soc_tplg_private priv; } ;
struct snd_soc_tplg_hw_config {int tx_slots; int rx_slots; int mclk_direction; int tdm_slot_width; int tdm_slots; int fsync_rate; int bclk_rate; int mclk_rate; } ;
struct snd_soc_dai_link {int dummy; } ;
struct snd_soc_component {int dummy; } ;
typedef int reply ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int dev_dbg (int ,char*,void*,int ,void*,void*,int,int ,void*,int,int ,int ) ;
 int dev_err (int ,char*,void*) ;
 void* le32_to_cpu (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int sof_dai_set_format (struct snd_soc_tplg_hw_config*,struct sof_ipc_dai_config*) ;
 int sof_ipc_tx_message (int ,int ,struct sof_ipc_dai_config*,int,struct sof_ipc_reply*,int) ;
 int sof_parse_tokens (struct snd_soc_component*,TYPE_2__*,int ,int ,int ,void*) ;
 int sof_set_dai_config (struct snd_sof_dev*,int,struct snd_soc_dai_link*,struct sof_ipc_dai_config*) ;
 int ssp_tokens ;

__attribute__((used)) static int sof_link_ssp_load(struct snd_soc_component *scomp, int index,
        struct snd_soc_dai_link *link,
        struct snd_soc_tplg_link_config *cfg,
        struct snd_soc_tplg_hw_config *hw_config,
        struct sof_ipc_dai_config *config)
{
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(scomp);
 struct snd_soc_tplg_private *private = &cfg->priv;
 struct sof_ipc_reply reply;
 u32 size = sizeof(*config);
 int ret;


 sof_dai_set_format(hw_config, config);


 memset(&config->ssp, 0, sizeof(struct sof_ipc_dai_ssp_params));
 config->hdr.size = size;

 ret = sof_parse_tokens(scomp, &config->ssp, ssp_tokens,
          ARRAY_SIZE(ssp_tokens), private->array,
          le32_to_cpu(private->size));
 if (ret != 0) {
  dev_err(sdev->dev, "error: parse ssp tokens failed %d\n",
   le32_to_cpu(private->size));
  return ret;
 }

 config->ssp.mclk_rate = le32_to_cpu(hw_config->mclk_rate);
 config->ssp.bclk_rate = le32_to_cpu(hw_config->bclk_rate);
 config->ssp.fsync_rate = le32_to_cpu(hw_config->fsync_rate);
 config->ssp.tdm_slots = le32_to_cpu(hw_config->tdm_slots);
 config->ssp.tdm_slot_width = le32_to_cpu(hw_config->tdm_slot_width);
 config->ssp.mclk_direction = hw_config->mclk_direction;
 config->ssp.rx_slots = le32_to_cpu(hw_config->rx_slots);
 config->ssp.tx_slots = le32_to_cpu(hw_config->tx_slots);

 dev_dbg(sdev->dev, "tplg: config SSP%d fmt 0x%x mclk %d bclk %d fclk %d width (%d)%d slots %d mclk id %d quirks %d\n",
  config->dai_index, config->format,
  config->ssp.mclk_rate, config->ssp.bclk_rate,
  config->ssp.fsync_rate, config->ssp.sample_valid_bits,
  config->ssp.tdm_slot_width, config->ssp.tdm_slots,
  config->ssp.mclk_id, config->ssp.quirks);


 if (config->ssp.fsync_rate < 8000 || config->ssp.fsync_rate > 192000) {
  dev_err(sdev->dev, "error: invalid fsync rate for SSP%d\n",
   config->dai_index);
  return -EINVAL;
 }

 if (config->ssp.tdm_slots < 1 || config->ssp.tdm_slots > 8) {
  dev_err(sdev->dev, "error: invalid channel count for SSP%d\n",
   config->dai_index);
  return -EINVAL;
 }


 ret = sof_ipc_tx_message(sdev->ipc,
     config->hdr.cmd, config, size, &reply,
     sizeof(reply));

 if (ret < 0) {
  dev_err(sdev->dev, "error: failed to set DAI config for SSP%d\n",
   config->dai_index);
  return ret;
 }


 ret = sof_set_dai_config(sdev, size, link, config);
 if (ret < 0)
  dev_err(sdev->dev, "error: failed to save DAI config for SSP%d\n",
   config->dai_index);

 return ret;
}
