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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_spdifout {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SPDIFOUT_CTRL0 ; 
 int SPDIFOUT_CTRL0_DATA_SEL ; 
 unsigned int FUNC0 (int) ; 
 int SPDIFOUT_CTRL0_MASK_MASK ; 
 int SPDIFOUT_CTRL0_MSB_FIRST ; 
 int /*<<< orphan*/  SPDIFOUT_CTRL1 ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int SPDIFOUT_CTRL1_MSB_POS_MASK ; 
 unsigned int FUNC2 (int) ; 
 int SPDIFOUT_CTRL1_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC6 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct axg_spdifout* FUNC8 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_hw_params *params,
				   struct snd_soc_dai *dai)
{
	struct axg_spdifout *priv = FUNC8(dai);
	unsigned int val;

	/* Set the samples spdifout will pull from the FIFO */
	switch (FUNC4(params)) {
	case 1:
		val = FUNC0(0x1);
		break;
	case 2:
		val = FUNC0(0x3);
		break;
	default:
		FUNC3(dai->dev, "too many channels for spdif dai: %u\n",
			FUNC4(params));
		return -EINVAL;
	}

	FUNC7(priv->map, SPDIFOUT_CTRL0,
			   SPDIFOUT_CTRL0_MASK_MASK, val);

	/* FIFO data are arranged in chunks of 64bits */
	switch (FUNC5(params)) {
	case 8:
		/* 8 samples of 8 bits */
		val = FUNC2(0);
		break;
	case 16:
		/* 4 samples of 16 bits - right justified */
		val = FUNC2(2);
		break;
	case 32:
		/* 2 samples of 32 bits - right justified */
		val = FUNC2(4);
		break;
	default:
		FUNC3(dai->dev, "Unsupported physical width: %u\n",
			FUNC5(params));
		return -EINVAL;
	}

	/* Position of the MSB in FIFO samples */
	val |= FUNC1(FUNC6(params) - 1);

	FUNC7(priv->map, SPDIFOUT_CTRL1,
			   SPDIFOUT_CTRL1_MSB_POS_MASK |
			   SPDIFOUT_CTRL1_TYPE_MASK, val);

	FUNC7(priv->map, SPDIFOUT_CTRL0,
			   SPDIFOUT_CTRL0_MSB_FIRST | SPDIFOUT_CTRL0_DATA_SEL,
			   0);

	return 0;
}