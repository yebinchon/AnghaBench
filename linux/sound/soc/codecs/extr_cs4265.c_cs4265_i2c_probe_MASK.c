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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct cs4265_private {scalar_t__ regmap; scalar_t__ reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CS4265_CHIP_ID ; 
 unsigned int CS4265_CHIP_ID_MASK ; 
 unsigned int CS4265_CHIP_ID_VAL ; 
 int /*<<< orphan*/  CS4265_PWRCTL ; 
 unsigned int CS4265_REV_ID_MASK ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  cs4265_dai ; 
 int /*<<< orphan*/  cs4265_regmap ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct cs4265_private* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct cs4265_private*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (scalar_t__,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  soc_component_cs4265 ; 

__attribute__((used)) static int FUNC14(struct i2c_client *i2c_client,
			     const struct i2c_device_id *id)
{
	struct cs4265_private *cs4265;
	int ret = 0;
	unsigned int devid = 0;
	unsigned int reg;

	cs4265 = FUNC6(&i2c_client->dev, sizeof(struct cs4265_private),
			       GFP_KERNEL);
	if (cs4265 == NULL)
		return -ENOMEM;

	cs4265->regmap = FUNC7(i2c_client, &cs4265_regmap);
	if (FUNC1(cs4265->regmap)) {
		ret = FUNC2(cs4265->regmap);
		FUNC3(&i2c_client->dev, "regmap_init() failed: %d\n", ret);
		return ret;
	}

	cs4265->reset_gpio = FUNC5(&i2c_client->dev,
		"reset", GPIOD_OUT_LOW);
	if (FUNC1(cs4265->reset_gpio))
		return FUNC2(cs4265->reset_gpio);

	if (cs4265->reset_gpio) {
		FUNC11(1);
		FUNC9(cs4265->reset_gpio, 1);
	}

	FUNC10(i2c_client, cs4265);

	ret = FUNC12(cs4265->regmap, CS4265_CHIP_ID, &reg);
	devid = reg & CS4265_CHIP_ID_MASK;
	if (devid != CS4265_CHIP_ID_VAL) {
		ret = -ENODEV;
		FUNC3(&i2c_client->dev,
			"CS4265 Device ID (%X). Expected %X\n",
			devid, CS4265_CHIP_ID);
		return ret;
	}
	FUNC4(&i2c_client->dev,
		"CS4265 Version %x\n",
			reg & CS4265_REV_ID_MASK);

	FUNC13(cs4265->regmap, CS4265_PWRCTL, 0x0F);

	ret = FUNC8(&i2c_client->dev,
			&soc_component_cs4265, cs4265_dai,
			FUNC0(cs4265_dai));
	return ret;
}