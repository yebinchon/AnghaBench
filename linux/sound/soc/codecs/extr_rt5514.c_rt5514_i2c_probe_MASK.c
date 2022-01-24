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
struct rt5514_platform_data {int dummy; } ;
struct rt5514_priv {int /*<<< orphan*/  regmap; int /*<<< orphan*/  i2c_regmap; struct rt5514_platform_data pdata; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int RT5514_DEVICE_ID ; 
 int /*<<< orphan*/  RT5514_VENDOR_ID2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 struct rt5514_platform_data* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 struct rt5514_priv* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct rt5514_priv*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt5514_dai ; 
 int /*<<< orphan*/  rt5514_i2c_patch ; 
 int /*<<< orphan*/  rt5514_i2c_regmap ; 
 int /*<<< orphan*/  FUNC14 (struct rt5514_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rt5514_patch ; 
 int /*<<< orphan*/  rt5514_regmap ; 
 int /*<<< orphan*/  soc_component_dev_rt5514 ; 

__attribute__((used)) static int FUNC15(struct i2c_client *i2c,
		    const struct i2c_device_id *id)
{
	struct rt5514_platform_data *pdata = FUNC4(&i2c->dev);
	struct rt5514_priv *rt5514;
	int ret;
	unsigned int val = ~0;

	rt5514 = FUNC6(&i2c->dev, sizeof(struct rt5514_priv),
				GFP_KERNEL);
	if (rt5514 == NULL)
		return -ENOMEM;

	FUNC10(i2c, rt5514);

	if (pdata)
		rt5514->pdata = *pdata;
	else
		FUNC14(rt5514, &i2c->dev);

	rt5514->i2c_regmap = FUNC8(i2c, &rt5514_i2c_regmap);
	if (FUNC1(rt5514->i2c_regmap)) {
		ret = FUNC2(rt5514->i2c_regmap);
		FUNC3(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	rt5514->regmap = FUNC7(&i2c->dev, NULL, i2c, &rt5514_regmap);
	if (FUNC1(rt5514->regmap)) {
		ret = FUNC2(rt5514->regmap);
		FUNC3(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	/*
	 * The rt5514 can get confused if the i2c lines glitch together, as
	 * can happen at bootup as regulators are turned off and on.  If it's
	 * in this glitched state the first i2c read will fail, so we'll give
	 * it one change to retry.
	 */
	ret = FUNC12(rt5514->regmap, RT5514_VENDOR_ID2, &val);
	if (ret || val != RT5514_DEVICE_ID)
		ret = FUNC12(rt5514->regmap, RT5514_VENDOR_ID2, &val);
	if (ret || val != RT5514_DEVICE_ID) {
		FUNC3(&i2c->dev,
			"Device with ID register %x is not rt5514\n", val);
		return -ENODEV;
	}

	ret = FUNC11(rt5514->i2c_regmap, rt5514_i2c_patch,
				    FUNC0(rt5514_i2c_patch));
	if (ret != 0)
		FUNC5(&i2c->dev, "Failed to apply i2c_regmap patch: %d\n",
			ret);

	ret = FUNC13(rt5514->regmap, rt5514_patch,
				    FUNC0(rt5514_patch));
	if (ret != 0)
		FUNC5(&i2c->dev, "Failed to apply regmap patch: %d\n", ret);

	return FUNC9(&i2c->dev,
			&soc_component_dev_rt5514,
			rt5514_dai, FUNC0(rt5514_dai));
}