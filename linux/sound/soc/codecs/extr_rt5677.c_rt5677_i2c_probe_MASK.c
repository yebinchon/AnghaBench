#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ dmic2_clk_pin; scalar_t__ micbias1_vdd_3v3; scalar_t__ lout3_diff; scalar_t__ lout2_diff; scalar_t__ lout1_diff; scalar_t__ in2_diff; scalar_t__ in1_diff; } ;
struct rt5677_priv {int type; void* regmap; TYPE_1__ pdata; void* regmap_physical; void* reset_pin; void* pow_ldo2; TYPE_2__* dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_13__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
typedef  enum rt5677_type { ____Placeholder_rt5677_type } rt5677_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 unsigned int RT5677_DEVICE_ID ; 
 scalar_t__ RT5677_DMIC_CLK2 ; 
 int /*<<< orphan*/  RT5677_GEN_CTRL2 ; 
 int /*<<< orphan*/  RT5677_GPIO5_DIR_MASK ; 
 int /*<<< orphan*/  RT5677_GPIO5_DIR_OUT ; 
 int /*<<< orphan*/  RT5677_GPIO5_FUNC_DMIC ; 
 int /*<<< orphan*/  RT5677_GPIO5_FUNC_MASK ; 
 int /*<<< orphan*/  RT5677_GPIO_CTRL2 ; 
 int /*<<< orphan*/  RT5677_IN1 ; 
 int /*<<< orphan*/  RT5677_IN_DF1 ; 
 int /*<<< orphan*/  RT5677_IN_DF2 ; 
 int /*<<< orphan*/  RT5677_LOUT1 ; 
 int /*<<< orphan*/  RT5677_LOUT1_L_DF ; 
 int /*<<< orphan*/  RT5677_LOUT2_L_DF ; 
 int /*<<< orphan*/  RT5677_LOUT3_L_DF ; 
 int /*<<< orphan*/  RT5677_MICBIAS ; 
 int /*<<< orphan*/  RT5677_MICBIAS1_CTRL_VDD_3_3V ; 
 int /*<<< orphan*/  RT5677_MICBIAS1_CTRL_VDD_MASK ; 
 int /*<<< orphan*/  RT5677_RESET ; 
 int /*<<< orphan*/  RT5677_VENDOR_ID2 ; 
 struct acpi_device_id* FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int) ; 
 void* FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 struct rt5677_priv* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,struct i2c_client*,int /*<<< orphan*/ *) ; 
 void* FUNC10 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,struct rt5677_priv*) ; 
 int /*<<< orphan*/  init_list ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 struct of_device_id* FUNC14 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (void*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC16 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rt5677_acpi_match ; 
 int /*<<< orphan*/  rt5677_dai ; 
 int /*<<< orphan*/  FUNC19 (struct i2c_client*) ; 
 int FUNC20 (struct i2c_client*) ; 
 int /*<<< orphan*/  rt5677_of_match ; 
 int /*<<< orphan*/  FUNC21 (struct rt5677_priv*,TYPE_2__*) ; 
 int /*<<< orphan*/  rt5677_regmap ; 
 int /*<<< orphan*/  rt5677_regmap_physical ; 
 int /*<<< orphan*/  soc_component_dev_rt5677 ; 

__attribute__((used)) static int FUNC22(struct i2c_client *i2c)
{
	struct rt5677_priv *rt5677;
	int ret;
	unsigned int val;

	rt5677 = FUNC8(&i2c->dev, sizeof(struct rt5677_priv),
				GFP_KERNEL);
	if (rt5677 == NULL)
		return -ENOMEM;

	rt5677->dev = &i2c->dev;
	FUNC12(i2c, rt5677);

	if (i2c->dev.of_node) {
		const struct of_device_id *match_id;

		match_id = FUNC14(rt5677_of_match, &i2c->dev);
		if (match_id)
			rt5677->type = (enum rt5677_type)match_id->data;
	} else if (FUNC0(&i2c->dev)) {
		const struct acpi_device_id *acpi_id;

		acpi_id = FUNC4(rt5677_acpi_match, &i2c->dev);
		if (acpi_id)
			rt5677->type = (enum rt5677_type)acpi_id->driver_data;
	} else {
		return -EINVAL;
	}

	FUNC21(rt5677, &i2c->dev);

	/* pow-ldo2 and reset are optional. The codec pins may be statically
	 * connected on the board without gpios. If the gpio device property
	 * isn't specified, devm_gpiod_get_optional returns NULL.
	 */
	rt5677->pow_ldo2 = FUNC7(&i2c->dev,
			"realtek,pow-ldo2", GPIOD_OUT_HIGH);
	if (FUNC2(rt5677->pow_ldo2)) {
		ret = FUNC3(rt5677->pow_ldo2);
		FUNC5(&i2c->dev, "Failed to request POW_LDO2: %d\n", ret);
		return ret;
	}
	rt5677->reset_pin = FUNC7(&i2c->dev,
			"realtek,reset", GPIOD_OUT_LOW);
	if (FUNC2(rt5677->reset_pin)) {
		ret = FUNC3(rt5677->reset_pin);
		FUNC5(&i2c->dev, "Failed to request RESET: %d\n", ret);
		return ret;
	}

	if (rt5677->pow_ldo2 || rt5677->reset_pin) {
		/* Wait a while until I2C bus becomes available. The datasheet
		 * does not specify the exact we should wait but startup
		 * sequence mentiones at least a few milliseconds.
		 */
		FUNC13(10);
	}

	rt5677->regmap_physical = FUNC10(i2c,
					&rt5677_regmap_physical);
	if (FUNC2(rt5677->regmap_physical)) {
		ret = FUNC3(rt5677->regmap_physical);
		FUNC5(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	rt5677->regmap = FUNC9(&i2c->dev, NULL, i2c, &rt5677_regmap);
	if (FUNC2(rt5677->regmap)) {
		ret = FUNC3(rt5677->regmap);
		FUNC5(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	FUNC15(rt5677->regmap, RT5677_VENDOR_ID2, &val);
	if (val != RT5677_DEVICE_ID) {
		FUNC5(&i2c->dev,
			"Device with ID register %#x is not rt5677\n", val);
		return -ENODEV;
	}

	FUNC18(rt5677->regmap, RT5677_RESET, 0x10ec);

	ret = FUNC16(rt5677->regmap, init_list,
				    FUNC1(init_list));
	if (ret != 0)
		FUNC6(&i2c->dev, "Failed to apply regmap patch: %d\n", ret);

	if (rt5677->pdata.in1_diff)
		FUNC17(rt5677->regmap, RT5677_IN1,
					RT5677_IN_DF1, RT5677_IN_DF1);

	if (rt5677->pdata.in2_diff)
		FUNC17(rt5677->regmap, RT5677_IN1,
					RT5677_IN_DF2, RT5677_IN_DF2);

	if (rt5677->pdata.lout1_diff)
		FUNC17(rt5677->regmap, RT5677_LOUT1,
					RT5677_LOUT1_L_DF, RT5677_LOUT1_L_DF);

	if (rt5677->pdata.lout2_diff)
		FUNC17(rt5677->regmap, RT5677_LOUT1,
					RT5677_LOUT2_L_DF, RT5677_LOUT2_L_DF);

	if (rt5677->pdata.lout3_diff)
		FUNC17(rt5677->regmap, RT5677_LOUT1,
					RT5677_LOUT3_L_DF, RT5677_LOUT3_L_DF);

	if (rt5677->pdata.dmic2_clk_pin == RT5677_DMIC_CLK2) {
		FUNC17(rt5677->regmap, RT5677_GEN_CTRL2,
					RT5677_GPIO5_FUNC_MASK,
					RT5677_GPIO5_FUNC_DMIC);
		FUNC17(rt5677->regmap, RT5677_GPIO_CTRL2,
					RT5677_GPIO5_DIR_MASK,
					RT5677_GPIO5_DIR_OUT);
	}

	if (rt5677->pdata.micbias1_vdd_3v3)
		FUNC17(rt5677->regmap, RT5677_MICBIAS,
			RT5677_MICBIAS1_CTRL_VDD_MASK,
			RT5677_MICBIAS1_CTRL_VDD_3_3V);

	FUNC19(i2c);
	ret = FUNC20(i2c);
	if (ret)
		FUNC5(&i2c->dev, "Failed to initialize irq: %d\n", ret);

	return FUNC11(&i2c->dev,
				      &soc_component_dev_rt5677,
				      rt5677_dai, FUNC1(rt5677_dai));
}