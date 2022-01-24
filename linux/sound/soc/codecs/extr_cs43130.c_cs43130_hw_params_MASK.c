#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs43130_rate_map {int /*<<< orphan*/  val; } ;
struct cs43130_private {int clk_req; int /*<<< orphan*/  regmap; TYPE_1__* dais; int /*<<< orphan*/  clk_mutex; scalar_t__ pll_bypass; int /*<<< orphan*/  mclk; } ;
struct TYPE_2__ {unsigned int sclk; scalar_t__ dai_mode; } ;

/* Variables and functions */
#define  CS43130_ASP_DOP_DAI 130 
#define  CS43130_ASP_PCM_DAI 129 
 int /*<<< orphan*/  CS43130_DSD_PATH_CTL_2 ; 
 int /*<<< orphan*/  CS43130_DSD_SPEED_MASK ; 
 int CS43130_DSD_SPEED_SHIFT ; 
 int CS43130_DSD_SRC_ASP ; 
 int /*<<< orphan*/  CS43130_DSD_SRC_MASK ; 
 int CS43130_DSD_SRC_SHIFT ; 
 int CS43130_DSD_SRC_XSP ; 
 unsigned int CS43130_MCLK_22M ; 
 unsigned int CS43130_MCLK_24M ; 
 int /*<<< orphan*/  CS43130_MCLK_SRC_EXT ; 
 int /*<<< orphan*/  CS43130_MCLK_SRC_PLL ; 
 int /*<<< orphan*/  CS43130_SP_SRATE ; 
#define  CS43130_XSP_DOP_DAI 128 
 int EINVAL ; 
 scalar_t__ SND_SOC_DAIFMT_CBM_CFM ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct cs43130_rate_map* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (size_t,unsigned int,struct snd_pcm_hw_params*,struct cs43130_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC10 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC11 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC12 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cs43130_private* FUNC15 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC16(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *params,
				 struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct cs43130_private *cs43130 = FUNC15(component);
	const struct cs43130_rate_map *rate_map;
	unsigned int sclk = cs43130->dais[dai->id].sclk;
	unsigned int bitwidth_sclk;
	unsigned int bitwidth_dai = (unsigned int)(FUNC12(params));
	unsigned int required_clk;
	u8 dsd_speed;

	FUNC8(&cs43130->clk_mutex);
	if (!cs43130->clk_req) {
		/* no DAI is currently using clk */
		if (!(CS43130_MCLK_22M % FUNC11(params)))
			required_clk = CS43130_MCLK_22M;
		else
			required_clk = CS43130_MCLK_24M;

		FUNC4(component, 0, 0, cs43130->mclk, required_clk);
		if (cs43130->pll_bypass)
			FUNC0(component, CS43130_MCLK_SRC_EXT);
		else
			FUNC0(component, CS43130_MCLK_SRC_PLL);
	}

	cs43130->clk_req++;
	if (cs43130->clk_req == 2)
		FUNC2(true, cs43130->regmap);
	FUNC9(&cs43130->clk_mutex);

	switch (dai->id) {
	case CS43130_ASP_DOP_DAI:
	case CS43130_XSP_DOP_DAI:
		/* DoP bitwidth is always 24-bit */
		bitwidth_dai = 24;
		sclk = FUNC11(params) * bitwidth_dai *
		       FUNC10(params);

		switch (FUNC11(params)) {
		case 176400:
			dsd_speed = 0;
			break;
		case 352800:
			dsd_speed = 1;
			break;
		default:
			FUNC7(component->dev, "Rate(%u) not supported\n",
				FUNC11(params));
			return -EINVAL;
		}

		FUNC13(cs43130->regmap, CS43130_DSD_PATH_CTL_2,
				   CS43130_DSD_SPEED_MASK,
				   dsd_speed << CS43130_DSD_SPEED_SHIFT);
		break;
	case CS43130_ASP_PCM_DAI:
		rate_map = FUNC1(FUNC11(params));
		if (!rate_map)
			return -EINVAL;

		FUNC14(cs43130->regmap, CS43130_SP_SRATE, rate_map->val);
		break;
	default:
		FUNC7(component->dev, "Invalid DAI (%d)\n", dai->id);
		return -EINVAL;
	}

	switch (dai->id) {
	case CS43130_ASP_DOP_DAI:
		FUNC13(cs43130->regmap, CS43130_DSD_PATH_CTL_2,
				   CS43130_DSD_SRC_MASK, CS43130_DSD_SRC_ASP <<
				   CS43130_DSD_SRC_SHIFT);
		break;
	case CS43130_XSP_DOP_DAI:
		FUNC13(cs43130->regmap, CS43130_DSD_PATH_CTL_2,
				   CS43130_DSD_SRC_MASK, CS43130_DSD_SRC_XSP <<
				   CS43130_DSD_SRC_SHIFT);
		break;
	}

	if (!sclk && cs43130->dais[dai->id].dai_mode == SND_SOC_DAIFMT_CBM_CFM)
		/* Calculate SCLK in master mode if unassigned */
		sclk = FUNC11(params) * bitwidth_dai *
		       FUNC10(params);

	if (!sclk) {
		/* at this point, SCLK must be set */
		FUNC7(component->dev, "SCLK freq is not set\n");
		return -EINVAL;
	}

	bitwidth_sclk = (sclk / FUNC11(params)) / FUNC10(params);
	if (bitwidth_sclk < bitwidth_dai) {
		FUNC7(component->dev, "Format not supported: SCLK freq is too low\n");
		return -EINVAL;
	}

	FUNC6(component->dev,
		"sclk = %u, fs = %d, bitwidth_dai = %u\n",
		sclk, FUNC11(params), bitwidth_dai);

	FUNC6(component->dev,
		"bitwidth_sclk = %u, num_ch = %u\n",
		bitwidth_sclk, FUNC10(params));

	FUNC3(dai->id, bitwidth_dai, cs43130->regmap);
	FUNC5(dai->id, bitwidth_sclk, params, cs43130);

	return 0;
}