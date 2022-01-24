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
typedef  int uint32_t ;
struct bcm2835_i2s_dev {int clk_prepared; int /*<<< orphan*/  i2s_regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_I2S_CS_A_REG ; 
 int BCM2835_I2S_RXCLR ; 
 int BCM2835_I2S_RXON ; 
 int BCM2835_I2S_SYNC ; 
 int BCM2835_I2S_TXCLR ; 
 int BCM2835_I2S_TXON ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_i2s_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_i2s_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct bcm2835_i2s_dev *dev,
				    bool tx, bool rx)
{
	int timeout = 1000;
	uint32_t syncval;
	uint32_t csreg;
	uint32_t i2s_active_state;
	bool clk_was_prepared;
	uint32_t off;
	uint32_t clr;

	off =  tx ? BCM2835_I2S_TXON : 0;
	off |= rx ? BCM2835_I2S_RXON : 0;

	clr =  tx ? BCM2835_I2S_TXCLR : 0;
	clr |= rx ? BCM2835_I2S_RXCLR : 0;

	/* Backup the current state */
	FUNC3(dev->i2s_regmap, BCM2835_I2S_CS_A_REG, &csreg);
	i2s_active_state = csreg & (BCM2835_I2S_RXON | BCM2835_I2S_TXON);

	/* Start clock if not running */
	clk_was_prepared = dev->clk_prepared;
	if (!clk_was_prepared)
		FUNC0(dev);

	/* Stop I2S module */
	FUNC4(dev->i2s_regmap, BCM2835_I2S_CS_A_REG, off, 0);

	/*
	 * Clear the FIFOs
	 * Requires at least 2 PCM clock cycles to take effect
	 */
	FUNC4(dev->i2s_regmap, BCM2835_I2S_CS_A_REG, clr, clr);

	/* Wait for 2 PCM clock cycles */

	/*
	 * Toggle the SYNC flag. After 2 PCM clock cycles it can be read back
	 * FIXME: This does not seem to work for slave mode!
	 */
	FUNC3(dev->i2s_regmap, BCM2835_I2S_CS_A_REG, &syncval);
	syncval &= BCM2835_I2S_SYNC;

	FUNC4(dev->i2s_regmap, BCM2835_I2S_CS_A_REG,
			BCM2835_I2S_SYNC, ~syncval);

	/* Wait for the SYNC flag changing it's state */
	while (--timeout) {
		FUNC3(dev->i2s_regmap, BCM2835_I2S_CS_A_REG, &csreg);
		if ((csreg & BCM2835_I2S_SYNC) != syncval)
			break;
	}

	if (!timeout)
		FUNC2(dev->dev, "I2S SYNC error!\n");

	/* Stop clock if it was not running before */
	if (!clk_was_prepared)
		FUNC1(dev);

	/* Restore I2S state */
	FUNC4(dev->i2s_regmap, BCM2835_I2S_CS_A_REG,
			BCM2835_I2S_RXON | BCM2835_I2S_TXON, i2s_active_state);
}