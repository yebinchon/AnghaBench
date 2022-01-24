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
struct cs43130_private {int clk_req; int /*<<< orphan*/  regmap; TYPE_1__* dais; int /*<<< orphan*/  clk_mutex; scalar_t__ pll_bypass; int /*<<< orphan*/  mclk; } ;
struct TYPE_2__ {scalar_t__ dai_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS43130_DSD_INT_CFG ; 
 int CS43130_DSD_MASTER ; 
 int /*<<< orphan*/  CS43130_DSD_PATH_CTL_2 ; 
 int CS43130_DSD_SPEED_MASK ; 
 int CS43130_DSD_SPEED_SHIFT ; 
 int CS43130_DSD_SRC_DSD ; 
 int CS43130_DSD_SRC_MASK ; 
 int CS43130_DSD_SRC_SHIFT ; 
 int CS43130_MCLK_22M ; 
 unsigned int CS43130_MCLK_24M ; 
 int /*<<< orphan*/  CS43130_MCLK_SRC_EXT ; 
 int /*<<< orphan*/  CS43130_MCLK_SRC_PLL ; 
 int EINVAL ; 
 scalar_t__ SND_SOC_DAIFMT_CBM_CFM ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct cs43130_private* FUNC8 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *params,
				 struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct cs43130_private *cs43130 = FUNC8(component);
	unsigned int required_clk;
	u8 dsd_speed;

	FUNC4(&cs43130->clk_mutex);
	if (!cs43130->clk_req) {
		/* no DAI is currently using clk */
		if (!(CS43130_MCLK_22M % FUNC6(params)))
			required_clk = CS43130_MCLK_22M;
		else
			required_clk = CS43130_MCLK_24M;

		FUNC2(component, 0, 0, cs43130->mclk, required_clk);
		if (cs43130->pll_bypass)
			FUNC0(component, CS43130_MCLK_SRC_EXT);
		else
			FUNC0(component, CS43130_MCLK_SRC_PLL);
	}

	cs43130->clk_req++;
	if (cs43130->clk_req == 2)
		FUNC1(true, cs43130->regmap);
	FUNC5(&cs43130->clk_mutex);

	switch (FUNC6(params)) {
	case 176400:
		dsd_speed = 0;
		break;
	case 352800:
		dsd_speed = 1;
		break;
	default:
		FUNC3(component->dev, "Rate(%u) not supported\n",
			FUNC6(params));
		return -EINVAL;
	}

	if (cs43130->dais[dai->id].dai_mode == SND_SOC_DAIFMT_CBM_CFM)
		FUNC7(cs43130->regmap, CS43130_DSD_INT_CFG,
				   CS43130_DSD_MASTER, CS43130_DSD_MASTER);
	else
		FUNC7(cs43130->regmap, CS43130_DSD_INT_CFG,
				   CS43130_DSD_MASTER, 0);

	FUNC7(cs43130->regmap, CS43130_DSD_PATH_CTL_2,
			   CS43130_DSD_SPEED_MASK,
			   dsd_speed << CS43130_DSD_SPEED_SHIFT);
	FUNC7(cs43130->regmap, CS43130_DSD_PATH_CTL_2,
			   CS43130_DSD_SRC_MASK, CS43130_DSD_SRC_DSD <<
			   CS43130_DSD_SRC_SHIFT);

	return 0;
}