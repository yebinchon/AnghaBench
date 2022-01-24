#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ssm2518_platform_data {int enable_gpio; } ;
struct ssm2518 {int enable_gpio; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {scalar_t__ of_node; struct ssm2518_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSM2518_POWER1_RESET ; 
 int /*<<< orphan*/  SSM2518_POWER2_APWDN ; 
 int /*<<< orphan*/  SSM2518_REG_POWER1 ; 
 int /*<<< orphan*/  SSM2518_REG_POWER2 ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,char*) ; 
 struct ssm2518* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct ssm2518*) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssm2518_component_driver ; 
 int /*<<< orphan*/  ssm2518_dai ; 
 int /*<<< orphan*/  ssm2518_regmap_config ; 
 int FUNC12 (struct ssm2518*,int) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *i2c,
	const struct i2c_device_id *id)
{
	struct ssm2518_platform_data *pdata = i2c->dev.platform_data;
	struct ssm2518 *ssm2518;
	int ret;

	ssm2518 = FUNC3(&i2c->dev, sizeof(*ssm2518), GFP_KERNEL);
	if (ssm2518 == NULL)
		return -ENOMEM;

	if (pdata) {
		ssm2518->enable_gpio = pdata->enable_gpio;
	} else if (i2c->dev.of_node) {
		ssm2518->enable_gpio = FUNC8(i2c->dev.of_node, 0);
		if (ssm2518->enable_gpio < 0 && ssm2518->enable_gpio != -ENOENT)
			return ssm2518->enable_gpio;
	} else {
		ssm2518->enable_gpio = -1;
	}

	if (FUNC6(ssm2518->enable_gpio)) {
		ret = FUNC2(&i2c->dev, ssm2518->enable_gpio,
				GPIOF_OUT_INIT_HIGH, "SSM2518 nSD");
		if (ret)
			return ret;
	}

	FUNC7(i2c, ssm2518);

	ssm2518->regmap = FUNC4(i2c, &ssm2518_regmap_config);
	if (FUNC0(ssm2518->regmap))
		return FUNC1(ssm2518->regmap);

	/*
	 * The reset bit is obviously volatile, but we need to be able to cache
	 * the other bits in the register, so we can't just mark the whole
	 * register as volatile. Since this is the only place where we'll ever
	 * touch the reset bit just bypass the cache for this operation.
	 */
	FUNC9(ssm2518->regmap, true);
	ret = FUNC11(ssm2518->regmap, SSM2518_REG_POWER1,
			SSM2518_POWER1_RESET);
	FUNC9(ssm2518->regmap, false);
	if (ret)
		return ret;

	ret = FUNC10(ssm2518->regmap, SSM2518_REG_POWER2,
				SSM2518_POWER2_APWDN, 0x00);
	if (ret)
		return ret;

	ret = FUNC12(ssm2518, false);
	if (ret)
		return ret;

	return FUNC5(&i2c->dev,
			&ssm2518_component_driver,
			&ssm2518_dai, 1);
}