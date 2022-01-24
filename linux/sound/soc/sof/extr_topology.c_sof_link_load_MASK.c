#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cmd; } ;
struct sof_ipc_dai_config {int type; scalar_t__ format; TYPE_2__ hdr; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
struct snd_soc_tplg_private {int /*<<< orphan*/  size; int /*<<< orphan*/  array; } ;
struct snd_soc_tplg_link_config {struct snd_soc_tplg_hw_config* hw_config; int /*<<< orphan*/  default_hw_config_id; int /*<<< orphan*/  num_hw_configs; struct snd_soc_tplg_private priv; } ;
struct snd_soc_tplg_hw_config {int /*<<< orphan*/  fmt; int /*<<< orphan*/  id; } ;
struct snd_soc_dai_link {int nonatomic; int /*<<< orphan*/  no_pcm; TYPE_1__* platforms; } ;
struct snd_soc_component {int dummy; } ;
typedef  int /*<<< orphan*/  config ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  SOF_DAI_IMX_ESAI 133 
#define  SOF_DAI_IMX_SAI 132 
#define  SOF_DAI_INTEL_ALH 131 
#define  SOF_DAI_INTEL_DMIC 130 
#define  SOF_DAI_INTEL_HDA 129 
#define  SOF_DAI_INTEL_SSP 128 
 int SOF_IPC_DAI_CONFIG ; 
 int SOF_IPC_GLB_DAI_MSG ; 
 int /*<<< orphan*/  dai_link_tokens ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sof_ipc_dai_config*,int /*<<< orphan*/ ,int) ; 
 struct snd_sof_dev* FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (struct snd_soc_component*,int,struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*,struct snd_soc_tplg_hw_config*,struct sof_ipc_dai_config*) ; 
 int FUNC8 (struct snd_soc_component*,int,struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*,struct snd_soc_tplg_hw_config*,struct sof_ipc_dai_config*) ; 
 int FUNC9 (struct snd_soc_component*,int,struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*,struct snd_soc_tplg_hw_config*,struct sof_ipc_dai_config*) ; 
 int FUNC10 (struct snd_soc_component*,int,struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*,struct snd_soc_tplg_hw_config*,struct sof_ipc_dai_config*) ; 
 int FUNC11 (struct snd_soc_component*,int,struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*,struct snd_soc_tplg_hw_config*,struct sof_ipc_dai_config*) ; 
 int FUNC12 (struct snd_soc_component*,int,struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*,struct snd_soc_tplg_hw_config*,struct sof_ipc_dai_config*) ; 
 int FUNC13 (struct snd_soc_component*,struct sof_ipc_dai_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct snd_soc_component *scomp, int index,
			 struct snd_soc_dai_link *link,
			 struct snd_soc_tplg_link_config *cfg)
{
	struct snd_sof_dev *sdev = FUNC6(scomp);
	struct snd_soc_tplg_private *private = &cfg->priv;
	struct sof_ipc_dai_config config;
	struct snd_soc_tplg_hw_config *hw_config;
	int num_hw_configs;
	int ret;
	int i = 0;

	if (!link->platforms) {
		FUNC2(sdev->dev, "error: no platforms\n");
		return -EINVAL;
	}
	link->platforms->name = FUNC3(sdev->dev);

	/*
	 * Set nonatomic property for FE dai links as their trigger action
	 * involves IPC's.
	 */
	if (!link->no_pcm) {
		link->nonatomic = true;

		/* nothing more to do for FE dai links */
		return 0;
	}

	/* check we have some tokens - we need at least DAI type */
	if (FUNC4(private->size) == 0) {
		FUNC2(sdev->dev, "error: expected tokens for DAI, none found\n");
		return -EINVAL;
	}

	/* Send BE DAI link configurations to DSP */
	FUNC5(&config, 0, sizeof(config));

	/* get any common DAI tokens */
	ret = FUNC13(scomp, &config, dai_link_tokens,
			       FUNC0(dai_link_tokens), private->array,
			       FUNC4(private->size));
	if (ret != 0) {
		FUNC2(sdev->dev, "error: parse link tokens failed %d\n",
			FUNC4(private->size));
		return ret;
	}

	/*
	 * DAI links are expected to have at least 1 hw_config.
	 * But some older topologies might have no hw_config for HDA dai links.
	 */
	num_hw_configs = FUNC4(cfg->num_hw_configs);
	if (!num_hw_configs) {
		if (config.type != SOF_DAI_INTEL_HDA) {
			FUNC2(sdev->dev, "error: unexpected DAI config count %d!\n",
				FUNC4(cfg->num_hw_configs));
			return -EINVAL;
		}
	} else {
		FUNC1(sdev->dev, "tplg: %d hw_configs found, default id: %d!\n",
			cfg->num_hw_configs, FUNC4(cfg->default_hw_config_id));

		for (i = 0; i < num_hw_configs; i++) {
			if (cfg->hw_config[i].id == cfg->default_hw_config_id)
				break;
		}

		if (i == num_hw_configs) {
			FUNC2(sdev->dev, "error: default hw_config id: %d not found!\n",
				FUNC4(cfg->default_hw_config_id));
			return -EINVAL;
		}
	}

	/* configure dai IPC message */
	hw_config = &cfg->hw_config[i];

	config.hdr.cmd = SOF_IPC_GLB_DAI_MSG | SOF_IPC_DAI_CONFIG;
	config.format = FUNC4(hw_config->fmt);

	/* now load DAI specific data and send IPC - type comes from token */
	switch (config.type) {
	case SOF_DAI_INTEL_SSP:
		ret = FUNC12(scomp, index, link, cfg, hw_config,
					&config);
		break;
	case SOF_DAI_INTEL_DMIC:
		ret = FUNC8(scomp, index, link, cfg, hw_config,
					 &config);
		break;
	case SOF_DAI_INTEL_HDA:
		ret = FUNC10(scomp, index, link, cfg, hw_config,
					&config);
		break;
	case SOF_DAI_INTEL_ALH:
		ret = FUNC7(scomp, index, link, cfg, hw_config,
					&config);
		break;
	case SOF_DAI_IMX_SAI:
		ret = FUNC11(scomp, index, link, cfg, hw_config,
					&config);
		break;
	case SOF_DAI_IMX_ESAI:
		ret = FUNC9(scomp, index, link, cfg, hw_config,
					 &config);
		break;
	default:
		FUNC2(sdev->dev, "error: invalid DAI type %d\n", config.type);
		ret = -EINVAL;
		break;
	}
	if (ret < 0)
		return ret;

	return 0;
}