#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sof_ipc_reply {int dummy; } ;
struct sof_ipc_dai_ssp_params {int dummy; } ;
struct TYPE_4__ {int size; int /*<<< orphan*/  cmd; } ;
struct TYPE_5__ {int fsync_rate; int tdm_slots; int /*<<< orphan*/  quirks; int /*<<< orphan*/  mclk_id; void* tdm_slot_width; int /*<<< orphan*/  sample_valid_bits; void* bclk_rate; void* mclk_rate; void* tx_slots; void* rx_slots; int /*<<< orphan*/  mclk_direction; } ;
struct sof_ipc_dai_config {void* dai_index; TYPE_1__ hdr; TYPE_2__ ssp; int /*<<< orphan*/  format; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  ipc; } ;
struct snd_soc_tplg_private {int /*<<< orphan*/  size; int /*<<< orphan*/  array; } ;
struct snd_soc_tplg_link_config {struct snd_soc_tplg_private priv; } ;
struct snd_soc_tplg_hw_config {int /*<<< orphan*/  tx_slots; int /*<<< orphan*/  rx_slots; int /*<<< orphan*/  mclk_direction; int /*<<< orphan*/  tdm_slot_width; int /*<<< orphan*/  tdm_slots; int /*<<< orphan*/  fsync_rate; int /*<<< orphan*/  bclk_rate; int /*<<< orphan*/  mclk_rate; } ;
struct snd_soc_dai_link {int dummy; } ;
struct snd_soc_component {int dummy; } ;
typedef  int /*<<< orphan*/  reply ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void*,int /*<<< orphan*/ ,void*,void*,int,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 struct snd_sof_dev* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_tplg_hw_config*,struct sof_ipc_dai_config*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sof_ipc_dai_config*,int,struct sof_ipc_reply*,int) ; 
 int FUNC8 (struct snd_soc_component*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC9 (struct snd_sof_dev*,int,struct snd_soc_dai_link*,struct sof_ipc_dai_config*) ; 
 int /*<<< orphan*/  ssp_tokens ; 

__attribute__((used)) static int FUNC10(struct snd_soc_component *scomp, int index,
			     struct snd_soc_dai_link *link,
			     struct snd_soc_tplg_link_config *cfg,
			     struct snd_soc_tplg_hw_config *hw_config,
			     struct sof_ipc_dai_config *config)
{
	struct snd_sof_dev *sdev = FUNC5(scomp);
	struct snd_soc_tplg_private *private = &cfg->priv;
	struct sof_ipc_reply reply;
	u32 size = sizeof(*config);
	int ret;

	/* handle master/slave and inverted clocks */
	FUNC6(hw_config, config);

	/* init IPC */
	FUNC4(&config->ssp, 0, sizeof(struct sof_ipc_dai_ssp_params));
	config->hdr.size = size;

	ret = FUNC8(scomp, &config->ssp, ssp_tokens,
			       FUNC0(ssp_tokens), private->array,
			       FUNC3(private->size));
	if (ret != 0) {
		FUNC2(sdev->dev, "error: parse ssp tokens failed %d\n",
			FUNC3(private->size));
		return ret;
	}

	config->ssp.mclk_rate = FUNC3(hw_config->mclk_rate);
	config->ssp.bclk_rate = FUNC3(hw_config->bclk_rate);
	config->ssp.fsync_rate = FUNC3(hw_config->fsync_rate);
	config->ssp.tdm_slots = FUNC3(hw_config->tdm_slots);
	config->ssp.tdm_slot_width = FUNC3(hw_config->tdm_slot_width);
	config->ssp.mclk_direction = hw_config->mclk_direction;
	config->ssp.rx_slots = FUNC3(hw_config->rx_slots);
	config->ssp.tx_slots = FUNC3(hw_config->tx_slots);

	FUNC1(sdev->dev, "tplg: config SSP%d fmt 0x%x mclk %d bclk %d fclk %d width (%d)%d slots %d mclk id %d quirks %d\n",
		config->dai_index, config->format,
		config->ssp.mclk_rate, config->ssp.bclk_rate,
		config->ssp.fsync_rate, config->ssp.sample_valid_bits,
		config->ssp.tdm_slot_width, config->ssp.tdm_slots,
		config->ssp.mclk_id, config->ssp.quirks);

	/* validate SSP fsync rate and channel count */
	if (config->ssp.fsync_rate < 8000 || config->ssp.fsync_rate > 192000) {
		FUNC2(sdev->dev, "error: invalid fsync rate for SSP%d\n",
			config->dai_index);
		return -EINVAL;
	}

	if (config->ssp.tdm_slots < 1 || config->ssp.tdm_slots > 8) {
		FUNC2(sdev->dev, "error: invalid channel count for SSP%d\n",
			config->dai_index);
		return -EINVAL;
	}

	/* send message to DSP */
	ret = FUNC7(sdev->ipc,
				 config->hdr.cmd, config, size, &reply,
				 sizeof(reply));

	if (ret < 0) {
		FUNC2(sdev->dev, "error: failed to set DAI config for SSP%d\n",
			config->dai_index);
		return ret;
	}

	/* set config for all DAI's with name matching the link name */
	ret = FUNC9(sdev, size, link, config);
	if (ret < 0)
		FUNC2(sdev->dev, "error: failed to save DAI config for SSP%d\n",
			config->dai_index);

	return ret;
}