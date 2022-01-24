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
struct rt5616_priv {int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT5616_DEVICE_ID ; 
 int /*<<< orphan*/  RT5616_PWR_ANLG1 ; 
 int RT5616_PWR_BG ; 
 int RT5616_PWR_FV1 ; 
 int RT5616_PWR_FV2 ; 
 int RT5616_PWR_LDO_DVO_1_2V ; 
 int RT5616_PWR_LDO_DVO_MASK ; 
 int RT5616_PWR_MB ; 
 int RT5616_PWR_VREF1 ; 
 int RT5616_PWR_VREF2 ; 
 int /*<<< orphan*/  RT5616_RESET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 struct rt5616_priv* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct rt5616_priv*) ; 
 int /*<<< orphan*/  init_list ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt5616_dai ; 
 int /*<<< orphan*/  rt5616_regmap ; 
 int /*<<< orphan*/  soc_component_dev_rt5616 ; 

__attribute__((used)) static int FUNC14(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct rt5616_priv *rt5616;
	unsigned int val;
	int ret;

	rt5616 = FUNC5(&i2c->dev, sizeof(struct rt5616_priv),
			      GFP_KERNEL);
	if (!rt5616)
		return -ENOMEM;

	FUNC8(i2c, rt5616);

	rt5616->regmap = FUNC6(i2c, &rt5616_regmap);
	if (FUNC1(rt5616->regmap)) {
		ret = FUNC2(rt5616->regmap);
		FUNC3(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	FUNC10(rt5616->regmap, RT5616_DEVICE_ID, &val);
	if (val != 0x6281) {
		FUNC3(&i2c->dev,
			"Device with ID register %#x is not rt5616\n",
			val);
		return -ENODEV;
	}
	FUNC13(rt5616->regmap, RT5616_RESET, 0);
	FUNC12(rt5616->regmap, RT5616_PWR_ANLG1,
			   RT5616_PWR_VREF1 | RT5616_PWR_MB |
			   RT5616_PWR_BG | RT5616_PWR_VREF2,
			   RT5616_PWR_VREF1 | RT5616_PWR_MB |
			   RT5616_PWR_BG | RT5616_PWR_VREF2);
	FUNC9(10);
	FUNC12(rt5616->regmap, RT5616_PWR_ANLG1,
			   RT5616_PWR_FV1 | RT5616_PWR_FV2,
			   RT5616_PWR_FV1 | RT5616_PWR_FV2);

	ret = FUNC11(rt5616->regmap, init_list,
				    FUNC0(init_list));
	if (ret != 0)
		FUNC4(&i2c->dev, "Failed to apply regmap patch: %d\n", ret);

	FUNC12(rt5616->regmap, RT5616_PWR_ANLG1,
			   RT5616_PWR_LDO_DVO_MASK, RT5616_PWR_LDO_DVO_1_2V);

	return FUNC7(&i2c->dev,
				      &soc_component_dev_rt5616,
				      rt5616_dai, FUNC0(rt5616_dai));
}