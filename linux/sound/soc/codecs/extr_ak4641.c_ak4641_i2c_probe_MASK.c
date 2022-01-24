#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {struct ak4641_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct ak4641_priv {int /*<<< orphan*/  regmap; } ;
struct ak4641_platform_data {int /*<<< orphan*/  gpio_power; int /*<<< orphan*/  gpio_npdn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ak4641_dai ; 
 int /*<<< orphan*/  ak4641_regmap ; 
 struct ak4641_priv* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct ak4641_priv*) ; 
 int /*<<< orphan*/  soc_component_dev_ak4641 ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct ak4641_platform_data *pdata = i2c->dev.platform_data;
	struct ak4641_priv *ak4641;
	int ret;

	ak4641 = FUNC3(&i2c->dev, sizeof(struct ak4641_priv),
			      GFP_KERNEL);
	if (!ak4641)
		return -ENOMEM;

	ak4641->regmap = FUNC4(i2c, &ak4641_regmap);
	if (FUNC1(ak4641->regmap))
		return FUNC2(ak4641->regmap);

	if (pdata) {
		if (FUNC7(pdata->gpio_power)) {
			ret = FUNC8(pdata->gpio_power,
					GPIOF_OUT_INIT_LOW, "ak4641 power");
			if (ret)
				goto err_out;
		}
		if (FUNC7(pdata->gpio_npdn)) {
			ret = FUNC8(pdata->gpio_npdn,
					GPIOF_OUT_INIT_LOW, "ak4641 npdn");
			if (ret)
				goto err_gpio;

			FUNC11(1); /* > 150 ns */
			FUNC9(pdata->gpio_npdn, 1);
		}
	}

	FUNC10(i2c, ak4641);

	ret = FUNC5(&i2c->dev,
				&soc_component_dev_ak4641,
				ak4641_dai, FUNC0(ak4641_dai));
	if (ret != 0)
		goto err_gpio2;

	return 0;

err_gpio2:
	if (pdata) {
		if (FUNC7(pdata->gpio_power))
			FUNC9(pdata->gpio_power, 0);
		if (FUNC7(pdata->gpio_npdn))
			FUNC6(pdata->gpio_npdn);
	}
err_gpio:
	if (pdata && FUNC7(pdata->gpio_power))
		FUNC6(pdata->gpio_power);
err_out:
	return ret;
}