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
 int /*<<< orphan*/  BCM2835_I2S_STBY ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_i2s_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm2835_i2s_dev* FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
			       struct snd_soc_dai *dai)
{
	struct bcm2835_i2s_dev *dev = FUNC2(dai);

	if (dai->active)
		return 0;

	/* Should this still be running stop it */
	FUNC0(dev);

	/* Enable PCM block */
	FUNC1(dev->i2s_regmap, BCM2835_I2S_CS_A_REG,
			BCM2835_I2S_EN, BCM2835_I2S_EN);

	/*
	 * Disable STBY.
	 * Requires at least 4 PCM clock cycles to take effect.
	 */
	FUNC1(dev->i2s_regmap, BCM2835_I2S_CS_A_REG,
			BCM2835_I2S_STBY, BCM2835_I2S_STBY);

	return 0;
}