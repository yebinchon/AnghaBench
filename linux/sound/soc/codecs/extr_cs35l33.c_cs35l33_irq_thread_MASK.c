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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct cs35l33_private {int amp_cal; int /*<<< orphan*/  regmap; struct snd_soc_component* component; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int CS35L33_ALIVE_ERR ; 
 int /*<<< orphan*/  CS35L33_AMP_CTL ; 
 unsigned int CS35L33_AMP_SHORT ; 
 int /*<<< orphan*/  CS35L33_AMP_SHORT_RLS ; 
 unsigned int CS35L33_CAL_ERR ; 
 int /*<<< orphan*/  CS35L33_CAL_ERR_RLS ; 
 unsigned int CS35L33_IMON_OVFL ; 
 int /*<<< orphan*/  CS35L33_INT_MASK_1 ; 
 int /*<<< orphan*/  CS35L33_INT_MASK_2 ; 
 int /*<<< orphan*/  CS35L33_INT_STATUS_1 ; 
 int /*<<< orphan*/  CS35L33_INT_STATUS_2 ; 
 unsigned int CS35L33_MCLK_ERR ; 
 unsigned int CS35L33_OTE ; 
 int /*<<< orphan*/  CS35L33_OTE_RLS ; 
 unsigned int CS35L33_OTW ; 
 int /*<<< orphan*/  CS35L33_OTW_RLS ; 
 unsigned int CS35L33_VMON_OVFL ; 
 unsigned int CS35L33_VPMON_OVFL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct cs35l33_private *cs35l33 = data;
	struct snd_soc_component *component = cs35l33->component;
	unsigned int sticky_val1, sticky_val2, current_val, mask1, mask2;

	FUNC3(cs35l33->regmap, CS35L33_INT_STATUS_2,
		&sticky_val2);
	FUNC3(cs35l33->regmap, CS35L33_INT_STATUS_1,
		&sticky_val1);
	FUNC3(cs35l33->regmap, CS35L33_INT_MASK_2, &mask2);
	FUNC3(cs35l33->regmap, CS35L33_INT_MASK_1, &mask1);

	/* Check to see if the unmasked bits are active,
	 *  if not then exit.
	 */
	if (!(sticky_val1 & ~mask1) && !(sticky_val2 & ~mask2))
		return IRQ_NONE;

	FUNC3(cs35l33->regmap, CS35L33_INT_STATUS_1,
		&current_val);

	/* handle the interrupts */

	if (sticky_val1 & CS35L33_AMP_SHORT) {
		FUNC0(component->dev, "Amp short error\n");
		if (!(current_val & CS35L33_AMP_SHORT)) {
			FUNC1(component->dev,
				"Amp short error release\n");
			FUNC4(cs35l33->regmap,
				CS35L33_AMP_CTL,
				CS35L33_AMP_SHORT_RLS, 0);
			FUNC4(cs35l33->regmap,
				CS35L33_AMP_CTL,
				CS35L33_AMP_SHORT_RLS,
				CS35L33_AMP_SHORT_RLS);
			FUNC4(cs35l33->regmap,
				CS35L33_AMP_CTL, CS35L33_AMP_SHORT_RLS,
				0);
		}
	}

	if (sticky_val1 & CS35L33_CAL_ERR) {
		FUNC2(component->dev, "Cal error\n");

		/* redo the calibration in next power up */
		cs35l33->amp_cal = false;

		if (!(current_val & CS35L33_CAL_ERR)) {
			FUNC1(component->dev, "Cal error release\n");
			FUNC4(cs35l33->regmap,
				CS35L33_AMP_CTL, CS35L33_CAL_ERR_RLS,
				0);
			FUNC4(cs35l33->regmap,
				CS35L33_AMP_CTL, CS35L33_CAL_ERR_RLS,
				CS35L33_CAL_ERR_RLS);
			FUNC4(cs35l33->regmap,
				CS35L33_AMP_CTL, CS35L33_CAL_ERR_RLS,
				0);
		}
	}

	if (sticky_val1 & CS35L33_OTE) {
		FUNC0(component->dev, "Over temperature error\n");
		if (!(current_val & CS35L33_OTE)) {
			FUNC1(component->dev,
				"Over temperature error release\n");
			FUNC4(cs35l33->regmap,
				CS35L33_AMP_CTL, CS35L33_OTE_RLS, 0);
			FUNC4(cs35l33->regmap,
				CS35L33_AMP_CTL, CS35L33_OTE_RLS,
				CS35L33_OTE_RLS);
			FUNC4(cs35l33->regmap,
				CS35L33_AMP_CTL, CS35L33_OTE_RLS, 0);
		}
	}

	if (sticky_val1 & CS35L33_OTW) {
		FUNC2(component->dev, "Over temperature warning\n");
		if (!(current_val & CS35L33_OTW)) {
			FUNC1(component->dev,
				"Over temperature warning release\n");
			FUNC4(cs35l33->regmap,
				CS35L33_AMP_CTL, CS35L33_OTW_RLS, 0);
			FUNC4(cs35l33->regmap,
				CS35L33_AMP_CTL, CS35L33_OTW_RLS,
				CS35L33_OTW_RLS);
			FUNC4(cs35l33->regmap,
				CS35L33_AMP_CTL, CS35L33_OTW_RLS, 0);
		}
	}
	if (CS35L33_ALIVE_ERR & sticky_val1)
		FUNC2(component->dev, "ERROR: ADSPCLK Interrupt\n");

	if (CS35L33_MCLK_ERR & sticky_val1)
		FUNC2(component->dev, "ERROR: MCLK Interrupt\n");

	if (CS35L33_VMON_OVFL & sticky_val2)
		FUNC2(component->dev,
			"ERROR: VMON Overflow Interrupt\n");

	if (CS35L33_IMON_OVFL & sticky_val2)
		FUNC2(component->dev,
			"ERROR: IMON Overflow Interrupt\n");

	if (CS35L33_VPMON_OVFL & sticky_val2)
		FUNC2(component->dev,
			"ERROR: VPMON Overflow Interrupt\n");

	return IRQ_HANDLED;
}