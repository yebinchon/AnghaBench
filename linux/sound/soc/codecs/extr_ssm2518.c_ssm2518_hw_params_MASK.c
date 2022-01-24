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
struct ssm2518 {int /*<<< orphan*/  regmap; scalar_t__ right_j; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int SSM2518_CLOCK_ASR ; 
 unsigned int SSM2518_POWER1_MCS_MASK ; 
 int /*<<< orphan*/  SSM2518_REG_CLOCK ; 
 int /*<<< orphan*/  SSM2518_REG_POWER1 ; 
 int /*<<< orphan*/  SSM2518_REG_SAI_CTRL1 ; 
 unsigned int SSM2518_SAI_CTRL1_FMT_MASK ; 
 unsigned int SSM2518_SAI_CTRL1_FMT_RJ_16BIT ; 
 unsigned int SSM2518_SAI_CTRL1_FMT_RJ_24BIT ; 
 unsigned int SSM2518_SAI_CTRL1_FS_16000_24000 ; 
 unsigned int SSM2518_SAI_CTRL1_FS_32000_48000 ; 
 unsigned int SSM2518_SAI_CTRL1_FS_64000_96000 ; 
 unsigned int SSM2518_SAI_CTRL1_FS_8000_12000 ; 
 unsigned int SSM2518_SAI_CTRL1_FS_MASK ; 
 unsigned int FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 struct ssm2518* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct ssm2518*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct ssm2518 *ssm2518 = FUNC3(component);
	unsigned int rate = FUNC0(params);
	unsigned int ctrl1, ctrl1_mask;
	int mcs;
	int ret;

	mcs = FUNC4(ssm2518, rate);
	if (mcs < 0)
		return mcs;

	ctrl1_mask = SSM2518_SAI_CTRL1_FS_MASK;

	if (rate >= 8000 && rate <= 12000)
		ctrl1 = SSM2518_SAI_CTRL1_FS_8000_12000;
	else if (rate >= 16000 && rate <= 24000)
		ctrl1 = SSM2518_SAI_CTRL1_FS_16000_24000;
	else if (rate >= 32000 && rate <= 48000)
		ctrl1 = SSM2518_SAI_CTRL1_FS_32000_48000;
	else if (rate >= 64000 && rate <= 96000)
		ctrl1 = SSM2518_SAI_CTRL1_FS_64000_96000;
	else
		return -EINVAL;

	if (ssm2518->right_j) {
		switch (FUNC1(params)) {
		case 16:
			ctrl1 |= SSM2518_SAI_CTRL1_FMT_RJ_16BIT;
			break;
		case 24:
			ctrl1 |= SSM2518_SAI_CTRL1_FMT_RJ_24BIT;
			break;
		default:
			return -EINVAL;
		}
		ctrl1_mask |= SSM2518_SAI_CTRL1_FMT_MASK;
	}

	/* Disable auto samplerate detection */
	ret = FUNC2(ssm2518->regmap, SSM2518_REG_CLOCK,
				SSM2518_CLOCK_ASR, SSM2518_CLOCK_ASR);
	if (ret < 0)
		return ret;

	ret = FUNC2(ssm2518->regmap, SSM2518_REG_SAI_CTRL1,
				ctrl1_mask, ctrl1);
	if (ret < 0)
		return ret;

	return FUNC2(ssm2518->regmap, SSM2518_REG_POWER1,
				SSM2518_POWER1_MCS_MASK, mcs << 1);
}