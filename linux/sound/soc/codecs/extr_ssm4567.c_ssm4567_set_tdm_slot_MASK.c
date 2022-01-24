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
struct ssm4567 {int /*<<< orphan*/  regmap; } ;
struct snd_soc_dai {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SSM4567_REG_SAI_CTRL_1 ; 
 int /*<<< orphan*/  SSM4567_REG_SAI_CTRL_2 ; 
 unsigned int SSM4567_SAI_CTRL_1_TDM_BLCKS_32 ; 
 unsigned int SSM4567_SAI_CTRL_1_TDM_BLCKS_48 ; 
 unsigned int SSM4567_SAI_CTRL_1_TDM_BLCKS_64 ; 
 int SSM4567_SAI_CTRL_1_TDM_BLCKS_MASK ; 
 int SSM4567_SAI_CTRL_2_AUTO_SLOT ; 
 unsigned int FUNC1 (int) ; 
 int SSM4567_SAI_CTRL_2_TDM_SLOT_MASK ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct ssm4567* FUNC4 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dai *dai, unsigned int tx_mask,
	unsigned int rx_mask, int slots, int width)
{
	struct ssm4567 *ssm4567 = FUNC4(dai);
	unsigned int blcks;
	int slot;
	int ret;

	if (tx_mask == 0)
		return -EINVAL;

	if (rx_mask && rx_mask != tx_mask)
		return -EINVAL;

	slot = FUNC2(tx_mask);
	if (tx_mask != FUNC0(slot))
		return -EINVAL;

	switch (width) {
	case 32:
		blcks = SSM4567_SAI_CTRL_1_TDM_BLCKS_32;
		break;
	case 48:
		blcks = SSM4567_SAI_CTRL_1_TDM_BLCKS_48;
		break;
	case 64:
		blcks = SSM4567_SAI_CTRL_1_TDM_BLCKS_64;
		break;
	default:
		return -EINVAL;
	}

	ret = FUNC3(ssm4567->regmap, SSM4567_REG_SAI_CTRL_2,
		SSM4567_SAI_CTRL_2_AUTO_SLOT | SSM4567_SAI_CTRL_2_TDM_SLOT_MASK,
		FUNC1(slot));
	if (ret)
		return ret;

	return FUNC3(ssm4567->regmap, SSM4567_REG_SAI_CTRL_1,
		SSM4567_SAI_CTRL_1_TDM_BLCKS_MASK, blcks);
}