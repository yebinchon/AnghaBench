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
struct ts3a227e {int buttons_held; struct device* dev; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int DETECTION_COMPLETE_EVENT ; 
 unsigned int INS_REM_EVENT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int TS3A227E_NUM_BUTTONS ; 
 int /*<<< orphan*/  TS3A227E_REG_ACCESSORY_STATUS ; 
 int /*<<< orphan*/  TS3A227E_REG_INTERRUPT ; 
 int /*<<< orphan*/  TS3A227E_REG_KP_INTERRUPT ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int FUNC3 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ts3a227e*) ; 
 int /*<<< orphan*/  FUNC5 (struct ts3a227e*,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct ts3a227e *ts3a227e = (struct ts3a227e *)data;
	struct regmap *regmap = ts3a227e->regmap;
	unsigned int int_reg, kp_int_reg, acc_reg, i;
	struct device *dev = ts3a227e->dev;
	int ret;

	/* Check for plug/unplug. */
	ret = FUNC3(regmap, TS3A227E_REG_INTERRUPT, &int_reg);
	if (ret) {
		FUNC2(dev, "failed to clear interrupt ret=%d\n", ret);
		return IRQ_NONE;
	}

	if (int_reg & (DETECTION_COMPLETE_EVENT | INS_REM_EVENT)) {
		FUNC3(regmap, TS3A227E_REG_ACCESSORY_STATUS, &acc_reg);
		FUNC5(ts3a227e, acc_reg);
	}

	/* Report any key events. */
	ret = FUNC3(regmap, TS3A227E_REG_KP_INTERRUPT, &kp_int_reg);
	if (ret) {
		FUNC2(dev, "failed to clear key interrupt ret=%d\n", ret);
		return IRQ_NONE;
	}

	for (i = 0; i < TS3A227E_NUM_BUTTONS; i++) {
		if (kp_int_reg & FUNC0(i))
			ts3a227e->buttons_held |= (1 << i);
		if (kp_int_reg & FUNC1(i))
			ts3a227e->buttons_held &= ~(1 << i);
	}

	FUNC4(ts3a227e);

	return IRQ_HANDLED;
}