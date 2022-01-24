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
struct atmel_i2s_dev {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_I2SC_IMR ; 
 unsigned int ATMEL_I2SC_INT_RXOR ; 
 unsigned int ATMEL_I2SC_INT_TXUR ; 
 unsigned int ATMEL_I2SC_MAX_TDM_CHANNELS ; 
 int /*<<< orphan*/  ATMEL_I2SC_SCR ; 
 int /*<<< orphan*/  ATMEL_I2SC_SR ; 
 unsigned int ATMEL_I2SC_SR_RXOR ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int ATMEL_I2SC_SR_TXUR ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct atmel_i2s_dev *dev = dev_id;
	unsigned int sr, imr, pending, ch, mask;
	irqreturn_t ret = IRQ_NONE;

	FUNC3(dev->regmap, ATMEL_I2SC_SR, &sr);
	FUNC3(dev->regmap, ATMEL_I2SC_IMR, &imr);
	pending = sr & imr;

	if (!pending)
		return IRQ_NONE;

	if (pending & ATMEL_I2SC_INT_RXOR) {
		mask = ATMEL_I2SC_SR_RXOR;

		for (ch = 0; ch < ATMEL_I2SC_MAX_TDM_CHANNELS; ++ch) {
			if (sr & FUNC0(ch)) {
				mask |= FUNC0(ch);
				FUNC2(dev->dev,
					"RX overrun on channel %d\n", ch);
			}
		}
		FUNC4(dev->regmap, ATMEL_I2SC_SCR, mask);
		ret = IRQ_HANDLED;
	}

	if (pending & ATMEL_I2SC_INT_TXUR) {
		mask = ATMEL_I2SC_SR_TXUR;

		for (ch = 0; ch < ATMEL_I2SC_MAX_TDM_CHANNELS; ++ch) {
			if (sr & FUNC1(ch)) {
				mask |= FUNC1(ch);
				FUNC2(dev->dev,
					"TX underrun on channel %d\n", ch);
			}
		}
		FUNC4(dev->regmap, ATMEL_I2SC_SCR, mask);
		ret = IRQ_HANDLED;
	}

	return ret;
}