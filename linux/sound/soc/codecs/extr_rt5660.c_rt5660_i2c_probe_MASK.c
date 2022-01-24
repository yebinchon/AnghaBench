#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct rt5660_platform_data {scalar_t__ dmic1_data_pin; } ;
struct rt5660_priv {int /*<<< orphan*/  regmap; struct rt5660_platform_data pdata; int /*<<< orphan*/  mclk; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_8__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int RT5660_AUTO_DIS_AMP ; 
 unsigned int RT5660_DEVICE_ID ; 
 scalar_t__ RT5660_DMIC1_DATA_GPIO2 ; 
 scalar_t__ RT5660_DMIC1_DATA_IN1P ; 
 int /*<<< orphan*/  RT5660_DMIC_CTRL1 ; 
 int /*<<< orphan*/  RT5660_GEN_CTRL1 ; 
 int RT5660_GP1_PIN_DMIC1_SCL ; 
 int RT5660_GP1_PIN_MASK ; 
 int /*<<< orphan*/  RT5660_GPIO_CTRL1 ; 
 int RT5660_MCLK_DET ; 
 int RT5660_POW_CLKDET ; 
 int /*<<< orphan*/  RT5660_RESET ; 
 int RT5660_SEL_DMIC_DATA_GPIO2 ; 
 int RT5660_SEL_DMIC_DATA_IN1P ; 
 int RT5660_SEL_DMIC_DATA_MASK ; 
 int /*<<< orphan*/  RT5660_VENDOR_ID2 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,unsigned int) ; 
 struct rt5660_platform_data* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 struct rt5660_priv* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct rt5660_priv*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt5660_dai ; 
 int /*<<< orphan*/  FUNC15 (struct rt5660_priv*,TYPE_1__*) ; 
 int /*<<< orphan*/  rt5660_patch ; 
 int /*<<< orphan*/  rt5660_regmap ; 
 int /*<<< orphan*/  soc_component_dev_rt5660 ; 

__attribute__((used)) static int FUNC16(struct i2c_client *i2c,
		    const struct i2c_device_id *id)
{
	struct rt5660_platform_data *pdata = FUNC4(&i2c->dev);
	struct rt5660_priv *rt5660;
	int ret;
	unsigned int val;

	rt5660 = FUNC7(&i2c->dev, sizeof(struct rt5660_priv),
		GFP_KERNEL);

	if (rt5660 == NULL)
		return -ENOMEM;

	/* Check if MCLK provided */
	rt5660->mclk = FUNC6(&i2c->dev, "mclk");
	if (FUNC2(rt5660->mclk) == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	FUNC10(i2c, rt5660);

	if (pdata)
		rt5660->pdata = *pdata;
	else if (i2c->dev.of_node)
		FUNC15(rt5660, &i2c->dev);

	rt5660->regmap = FUNC8(i2c, &rt5660_regmap);
	if (FUNC1(rt5660->regmap)) {
		ret = FUNC2(rt5660->regmap);
		FUNC3(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	FUNC11(rt5660->regmap, RT5660_VENDOR_ID2, &val);
	if (val != RT5660_DEVICE_ID) {
		FUNC3(&i2c->dev,
			"Device with ID register %#x is not rt5660\n", val);
		return -ENODEV;
	}

	FUNC14(rt5660->regmap, RT5660_RESET, 0);

	ret = FUNC12(rt5660->regmap, rt5660_patch,
				    FUNC0(rt5660_patch));
	if (ret != 0)
		FUNC5(&i2c->dev, "Failed to apply regmap patch: %d\n", ret);

	FUNC13(rt5660->regmap, RT5660_GEN_CTRL1,
		RT5660_AUTO_DIS_AMP | RT5660_MCLK_DET | RT5660_POW_CLKDET,
		RT5660_AUTO_DIS_AMP | RT5660_MCLK_DET | RT5660_POW_CLKDET);

	if (rt5660->pdata.dmic1_data_pin) {
		FUNC13(rt5660->regmap, RT5660_GPIO_CTRL1,
			RT5660_GP1_PIN_MASK, RT5660_GP1_PIN_DMIC1_SCL);

		if (rt5660->pdata.dmic1_data_pin == RT5660_DMIC1_DATA_GPIO2)
			FUNC13(rt5660->regmap, RT5660_DMIC_CTRL1,
				RT5660_SEL_DMIC_DATA_MASK,
				RT5660_SEL_DMIC_DATA_GPIO2);
		else if (rt5660->pdata.dmic1_data_pin == RT5660_DMIC1_DATA_IN1P)
			FUNC13(rt5660->regmap, RT5660_DMIC_CTRL1,
				RT5660_SEL_DMIC_DATA_MASK,
				RT5660_SEL_DMIC_DATA_IN1P);
	}

	return FUNC9(&i2c->dev,
				      &soc_component_dev_rt5660,
				      rt5660_dai, FUNC0(rt5660_dai));
}