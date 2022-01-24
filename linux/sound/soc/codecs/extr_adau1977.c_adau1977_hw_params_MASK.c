#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct adau1977 {scalar_t__ sysclk_src; int slot_width; int /*<<< orphan*/  regmap; scalar_t__ master; scalar_t__ right_j; } ;

/* Variables and functions */
 unsigned int ADAU1977_PLL_MCS_MASK ; 
 int /*<<< orphan*/  ADAU1977_REG_PLL ; 
 int /*<<< orphan*/  ADAU1977_REG_SAI_CTRL0 ; 
 int /*<<< orphan*/  ADAU1977_REG_SAI_CTRL1 ; 
 unsigned int ADAU1977_SAI_CTRL0_FMT_MASK ; 
 unsigned int ADAU1977_SAI_CTRL0_FMT_RJ_16BIT ; 
 unsigned int ADAU1977_SAI_CTRL0_FMT_RJ_24BIT ; 
 unsigned int ADAU1977_SAI_CTRL0_FS_MASK ; 
 unsigned int ADAU1977_SAI_CTRL1_BCLKRATE_16 ; 
 unsigned int ADAU1977_SAI_CTRL1_BCLKRATE_32 ; 
 unsigned int ADAU1977_SAI_CTRL1_BCLKRATE_MASK ; 
 unsigned int ADAU1977_SAI_CTRL1_DATA_WIDTH_16BIT ; 
 unsigned int ADAU1977_SAI_CTRL1_DATA_WIDTH_24BIT ; 
 unsigned int ADAU1977_SAI_CTRL1_DATA_WIDTH_MASK ; 
 scalar_t__ ADAU1977_SYSCLK_SRC_MCLK ; 
 int EINVAL ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (struct adau1977*,unsigned int,int) ; 
 unsigned int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 struct adau1977* FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct adau1977 *adau1977 = FUNC5(component);
	unsigned int rate = FUNC2(params);
	unsigned int slot_width;
	unsigned int ctrl0, ctrl0_mask;
	unsigned int ctrl1;
	int mcs, fs;
	int ret;

	fs = FUNC0(rate);
	if (fs < 0)
		return fs;

	if (adau1977->sysclk_src == ADAU1977_SYSCLK_SRC_MCLK) {
		mcs = FUNC1(adau1977, rate, fs);
		if (mcs < 0)
			return mcs;
	} else {
		mcs = 0;
	}

	ctrl0_mask = ADAU1977_SAI_CTRL0_FS_MASK;
	ctrl0 = fs;

	if (adau1977->right_j) {
		switch (FUNC3(params)) {
		case 16:
			ctrl0 |= ADAU1977_SAI_CTRL0_FMT_RJ_16BIT;
			break;
		case 24:
			ctrl0 |= ADAU1977_SAI_CTRL0_FMT_RJ_24BIT;
			break;
		default:
			return -EINVAL;
		}
		ctrl0_mask |= ADAU1977_SAI_CTRL0_FMT_MASK;
	}

	if (adau1977->master) {
		switch (FUNC3(params)) {
		case 16:
			ctrl1 = ADAU1977_SAI_CTRL1_DATA_WIDTH_16BIT;
			slot_width = 16;
			break;
		case 24:
		case 32:
			ctrl1 = ADAU1977_SAI_CTRL1_DATA_WIDTH_24BIT;
			slot_width = 32;
			break;
		default:
			return -EINVAL;
		}

		/* In TDM mode there is a fixed slot width */
		if (adau1977->slot_width)
			slot_width = adau1977->slot_width;

		if (slot_width == 16)
			ctrl1 |= ADAU1977_SAI_CTRL1_BCLKRATE_16;
		else
			ctrl1 |= ADAU1977_SAI_CTRL1_BCLKRATE_32;

		ret = FUNC4(adau1977->regmap,
			ADAU1977_REG_SAI_CTRL1,
			ADAU1977_SAI_CTRL1_DATA_WIDTH_MASK |
			ADAU1977_SAI_CTRL1_BCLKRATE_MASK,
			ctrl1);
		if (ret < 0)
			return ret;
	}

	ret = FUNC4(adau1977->regmap, ADAU1977_REG_SAI_CTRL0,
				ctrl0_mask, ctrl0);
	if (ret < 0)
		return ret;

	return FUNC4(adau1977->regmap, ADAU1977_REG_PLL,
				ADAU1977_PLL_MCS_MASK, mcs);
}