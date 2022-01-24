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
struct da7219_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA7219_ACCDET_CONFIG_1 ; 
 int /*<<< orphan*/  DA7219_ACCDET_EN_MASK ; 
 int /*<<< orphan*/  DA7219_CIF_CTRL ; 
 int /*<<< orphan*/  DA7219_CIF_REG_SOFT_RESET_MASK ; 
 int /*<<< orphan*/  DA7219_GAIN_RAMP_CTRL ; 
 int DA7219_GAIN_RAMP_RATE_NOMINAL ; 
 int /*<<< orphan*/  DA7219_SYSTEM_ACTIVE ; 
 int /*<<< orphan*/  DA7219_SYSTEM_ACTIVE_MASK ; 
 int /*<<< orphan*/  DA7219_SYSTEM_MODES_INPUT ; 
 int /*<<< orphan*/  DA7219_SYSTEM_MODES_OUTPUT ; 
 int /*<<< orphan*/  DA7219_SYSTEM_STATUS ; 
 int /*<<< orphan*/  DA7219_SYS_STAT_CHECK_DELAY ; 
 int DA7219_SYS_STAT_CHECK_RETRIES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  da7219_dai ; 
 int /*<<< orphan*/  da7219_regmap_config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct da7219_priv* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct da7219_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_component_dev_da7219 ; 

__attribute__((used)) static int FUNC12(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct da7219_priv *da7219;
	unsigned int system_active, system_status;
	int i, ret;

	da7219 = FUNC3(&i2c->dev, sizeof(struct da7219_priv),
			      GFP_KERNEL);
	if (!da7219)
		return -ENOMEM;

	FUNC6(i2c, da7219);

	da7219->regmap = FUNC4(i2c, &da7219_regmap_config);
	if (FUNC0(da7219->regmap)) {
		ret = FUNC1(da7219->regmap);
		FUNC2(&i2c->dev, "regmap_init() failed: %d\n", ret);
		return ret;
	}

	FUNC8(da7219->regmap, true);

	/* Disable audio paths if still active from previous start */
	FUNC9(da7219->regmap, DA7219_SYSTEM_ACTIVE, &system_active);
	if (system_active) {
		FUNC10(da7219->regmap, DA7219_GAIN_RAMP_CTRL,
			     DA7219_GAIN_RAMP_RATE_NOMINAL);
		FUNC10(da7219->regmap, DA7219_SYSTEM_MODES_INPUT, 0x00);
		FUNC10(da7219->regmap, DA7219_SYSTEM_MODES_OUTPUT, 0x01);

		for (i = 0; i < DA7219_SYS_STAT_CHECK_RETRIES; ++i) {
			FUNC9(da7219->regmap, DA7219_SYSTEM_STATUS,
				    &system_status);
			if (!system_status)
				break;

			FUNC7(DA7219_SYS_STAT_CHECK_DELAY);
		}
	}

	/* Soft reset component */
	FUNC11(da7219->regmap, DA7219_ACCDET_CONFIG_1,
			  DA7219_ACCDET_EN_MASK, 0);
	FUNC11(da7219->regmap, DA7219_CIF_CTRL,
			  DA7219_CIF_REG_SOFT_RESET_MASK,
			  DA7219_CIF_REG_SOFT_RESET_MASK);
	FUNC11(da7219->regmap, DA7219_SYSTEM_ACTIVE,
			  DA7219_SYSTEM_ACTIVE_MASK, 0);

	FUNC8(da7219->regmap, false);

	ret = FUNC5(&i2c->dev,
				     &soc_component_dev_da7219,
				     &da7219_dai, 1);
	if (ret < 0) {
		FUNC2(&i2c->dev, "Failed to register da7219 component: %d\n",
			ret);
	}
	return ret;
}