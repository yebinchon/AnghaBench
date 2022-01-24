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
struct ts3a227e {int /*<<< orphan*/  regmap; int /*<<< orphan*/  irq; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ADC_COMPLETE_INT_DISABLE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INTB_DISABLE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TS3A227E_REG_ACCESSORY_STATUS ; 
 int /*<<< orphan*/  TS3A227E_REG_INTERRUPT_DISABLE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,...) ; 
 struct ts3a227e* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct ts3a227e*) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct ts3a227e*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ts3a227e_interrupt ; 
 int /*<<< orphan*/  FUNC10 (struct ts3a227e*) ; 
 int /*<<< orphan*/  FUNC11 (struct ts3a227e*,unsigned int) ; 
 int FUNC12 (struct ts3a227e*,struct device*) ; 
 int /*<<< orphan*/  ts3a227e_regmap_config ; 
 int /*<<< orphan*/  ts3a227e_soc_driver ; 

__attribute__((used)) static int FUNC13(struct i2c_client *i2c,
			      const struct i2c_device_id *id)
{
	struct ts3a227e *ts3a227e;
	struct device *dev = &i2c->dev;
	int ret;
	unsigned int acc_reg;

	ts3a227e = FUNC3(&i2c->dev, sizeof(*ts3a227e), GFP_KERNEL);
	if (ts3a227e == NULL)
		return -ENOMEM;

	FUNC7(i2c, ts3a227e);
	ts3a227e->dev = dev;
	ts3a227e->irq = i2c->irq;

	ts3a227e->regmap = FUNC4(i2c, &ts3a227e_regmap_config);
	if (FUNC0(ts3a227e->regmap))
		return FUNC1(ts3a227e->regmap);

	ret = FUNC12(ts3a227e, dev);
	if (ret) {
		FUNC2(dev, "Failed to parse device property: %d\n", ret);
		return ret;
	}

	ret = FUNC5(dev, i2c->irq, NULL, ts3a227e_interrupt,
					IRQF_TRIGGER_LOW | IRQF_ONESHOT,
					"TS3A227E", ts3a227e);
	if (ret) {
		FUNC2(dev, "Cannot request irq %d (%d)\n", i2c->irq, ret);
		return ret;
	}

	ret = FUNC6(&i2c->dev, &ts3a227e_soc_driver,
					      NULL, 0);
	if (ret)
		return ret;

	/* Enable interrupts except for ADC complete. */
	FUNC9(ts3a227e->regmap, TS3A227E_REG_INTERRUPT_DISABLE,
			   INTB_DISABLE | ADC_COMPLETE_INT_DISABLE,
			   ADC_COMPLETE_INT_DISABLE);

	/* Read jack status because chip might not trigger interrupt at boot. */
	FUNC8(ts3a227e->regmap, TS3A227E_REG_ACCESSORY_STATUS, &acc_reg);
	FUNC11(ts3a227e, acc_reg);
	FUNC10(ts3a227e);

	return 0;
}