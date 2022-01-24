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
struct snd_soc_dai {scalar_t__ active; } ;
struct snd_pcm_substream {int dummy; } ;
struct bcm2835_i2s_dev {int /*<<< orphan*/  i2s_regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_I2S_CS_A_REG ; 
 int /*<<< orphan*/  BCM2835_I2S_EN ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_i2s_dev*,struct snd_pcm_substream*,struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_i2s_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm2835_i2s_dev* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static void FUNC4(struct snd_pcm_substream *substream,
		struct snd_soc_dai *dai)
{
	struct bcm2835_i2s_dev *dev = FUNC3(dai);

	FUNC0(dev, substream, dai);

	/* If both streams are stopped, disable module and clock */
	if (dai->active)
		return;

	/* Disable the module */
	FUNC2(dev->i2s_regmap, BCM2835_I2S_CS_A_REG,
			BCM2835_I2S_EN, 0);

	/*
	 * Stopping clock is necessary, because stop does
	 * not stop the clock when SND_SOC_DAIFMT_CONT
	 */
	FUNC1(dev);
}