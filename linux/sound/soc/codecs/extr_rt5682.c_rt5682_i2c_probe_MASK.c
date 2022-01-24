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
struct rt5682_platform_data {int dmic1_data_pin; int dmic1_clk_pin; int /*<<< orphan*/  ldo1_en; } ;
struct rt5682_priv {int /*<<< orphan*/  jd_check_work; int /*<<< orphan*/  jack_detect_work; int /*<<< orphan*/  regmap; struct rt5682_platform_data pdata; int /*<<< orphan*/  calibrate_mutex; TYPE_1__* supplies; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; scalar_t__ irq; } ;
struct TYPE_8__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 unsigned int DEVICE_ID ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT5682_BIAS_CUR_CTRL_8 ; 
 int /*<<< orphan*/  RT5682_CHARGE_PUMP_1 ; 
 int RT5682_CP_CLK_HP_300KHZ ; 
 int RT5682_CP_CLK_HP_MASK ; 
 int /*<<< orphan*/  RT5682_DEPOP_1 ; 
 int /*<<< orphan*/  RT5682_DEVICE_ID ; 
#define  RT5682_DMIC1_CLK_GPIO1 131 
#define  RT5682_DMIC1_CLK_GPIO3 130 
#define  RT5682_DMIC1_DATA_GPIO2 129 
#define  RT5682_DMIC1_DATA_GPIO5 128 
 int RT5682_DMIC1_NULL ; 
 int RT5682_DMIC_1_DP_GPIO2 ; 
 int RT5682_DMIC_1_DP_GPIO5 ; 
 int RT5682_DMIC_1_DP_MASK ; 
 int /*<<< orphan*/  RT5682_DMIC_CTRL_1 ; 
 int RT5682_GP1_PIN_DMIC_CLK ; 
 int RT5682_GP1_PIN_MASK ; 
 int RT5682_GP2_PIN_DMIC_SDA ; 
 int RT5682_GP2_PIN_MASK ; 
 int RT5682_GP3_PIN_DMIC_CLK ; 
 int RT5682_GP3_PIN_MASK ; 
 int RT5682_GP4_PIN_ADCDAT1 ; 
 int RT5682_GP4_PIN_MASK ; 
 int RT5682_GP5_PIN_DACDAT1 ; 
 int RT5682_GP5_PIN_DMIC_SDA ; 
 int RT5682_GP5_PIN_MASK ; 
 int /*<<< orphan*/  RT5682_GPIO_CTRL_1 ; 
 int RT5682_HPA_CP_BIAS_3UA ; 
 int RT5682_HPA_CP_BIAS_CTRL_MASK ; 
 int RT5682_HP_DRIVER_5X ; 
 int RT5682_HP_DRIVER_MASK ; 
 int /*<<< orphan*/  RT5682_I2C_MODE ; 
 int RT5682_LDO1_DVO_12 ; 
 int RT5682_LDO1_DVO_MASK ; 
 int /*<<< orphan*/  RT5682_MICBIAS_2 ; 
 int /*<<< orphan*/  RT5682_PWR_ANLG_1 ; 
 int /*<<< orphan*/  RT5682_TEST_MODE_CTRL_1 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 struct rt5682_platform_data* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct rt5682_priv* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct rt5682_priv*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*,struct rt5682_priv*) ; 
 struct rt5682_platform_data i2s_default_platform_data ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_1__* patch_list ; 
 int /*<<< orphan*/  FUNC16 (char*,unsigned int) ; 
 int FUNC17 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC21 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (struct rt5682_priv*) ; 
 TYPE_1__* rt5682_dai ; 
 int /*<<< orphan*/  rt5682_irq ; 
 int /*<<< orphan*/  rt5682_jack_detect_handler ; 
 int /*<<< orphan*/  rt5682_jd_check_handler ; 
 int /*<<< orphan*/  FUNC23 (struct rt5682_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rt5682_regmap ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rt5682_supply_names ; 
 int /*<<< orphan*/  soc_component_dev_rt5682 ; 
 int /*<<< orphan*/  FUNC25 (int,int) ; 

__attribute__((used)) static int FUNC26(struct i2c_client *i2c,
		    const struct i2c_device_id *id)
{
	struct rt5682_platform_data *pdata = FUNC5(&i2c->dev);
	struct rt5682_priv *rt5682;
	int i, ret;
	unsigned int val;

	rt5682 = FUNC8(&i2c->dev, sizeof(struct rt5682_priv),
		GFP_KERNEL);

	if (rt5682 == NULL)
		return -ENOMEM;

	FUNC14(i2c, rt5682);

	rt5682->pdata = i2s_default_platform_data;

	if (pdata)
		rt5682->pdata = *pdata;
	else
		FUNC23(rt5682, &i2c->dev);

	rt5682->regmap = FUNC9(i2c, &rt5682_regmap);
	if (FUNC2(rt5682->regmap)) {
		ret = FUNC3(rt5682->regmap);
		FUNC4(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	for (i = 0; i < FUNC0(rt5682->supplies); i++)
		rt5682->supplies[i].supply = rt5682_supply_names[i];

	ret = FUNC10(&i2c->dev, FUNC0(rt5682->supplies),
				      rt5682->supplies);
	if (ret != 0) {
		FUNC4(&i2c->dev, "Failed to request supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC21(FUNC0(rt5682->supplies),
				    rt5682->supplies);
	if (ret != 0) {
		FUNC4(&i2c->dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	if (FUNC13(rt5682->pdata.ldo1_en)) {
		if (FUNC7(&i2c->dev, rt5682->pdata.ldo1_en,
					  GPIOF_OUT_INIT_HIGH, "rt5682"))
			FUNC4(&i2c->dev, "Fail gpio_request gpio_ldo\n");
	}

	/* Sleep for 300 ms miniumum */
	FUNC25(300000, 350000);

	FUNC20(rt5682->regmap, RT5682_I2C_MODE, 0x1);
	FUNC25(10000, 15000);

	FUNC18(rt5682->regmap, RT5682_DEVICE_ID, &val);
	if (val != DEVICE_ID) {
		FUNC16("Device with ID register %x is not rt5682\n", val);
		return -ENODEV;
	}

	FUNC24(rt5682->regmap);

	FUNC15(&rt5682->calibrate_mutex);
	FUNC22(rt5682);

	ret = FUNC17(rt5682->regmap, patch_list,
				    FUNC0(patch_list));
	if (ret != 0)
		FUNC6(&i2c->dev, "Failed to apply regmap patch: %d\n", ret);

	FUNC20(rt5682->regmap, RT5682_DEPOP_1, 0x0000);

	/* DMIC pin*/
	if (rt5682->pdata.dmic1_data_pin != RT5682_DMIC1_NULL) {
		switch (rt5682->pdata.dmic1_data_pin) {
		case RT5682_DMIC1_DATA_GPIO2: /* share with LRCK2 */
			FUNC19(rt5682->regmap, RT5682_DMIC_CTRL_1,
				RT5682_DMIC_1_DP_MASK, RT5682_DMIC_1_DP_GPIO2);
			FUNC19(rt5682->regmap, RT5682_GPIO_CTRL_1,
				RT5682_GP2_PIN_MASK, RT5682_GP2_PIN_DMIC_SDA);
			break;

		case RT5682_DMIC1_DATA_GPIO5: /* share with DACDAT1 */
			FUNC19(rt5682->regmap, RT5682_DMIC_CTRL_1,
				RT5682_DMIC_1_DP_MASK, RT5682_DMIC_1_DP_GPIO5);
			FUNC19(rt5682->regmap, RT5682_GPIO_CTRL_1,
				RT5682_GP5_PIN_MASK, RT5682_GP5_PIN_DMIC_SDA);
			break;

		default:
			FUNC6(&i2c->dev, "invalid DMIC_DAT pin\n");
			break;
		}

		switch (rt5682->pdata.dmic1_clk_pin) {
		case RT5682_DMIC1_CLK_GPIO1: /* share with IRQ */
			FUNC19(rt5682->regmap, RT5682_GPIO_CTRL_1,
				RT5682_GP1_PIN_MASK, RT5682_GP1_PIN_DMIC_CLK);
			break;

		case RT5682_DMIC1_CLK_GPIO3: /* share with BCLK2 */
			FUNC19(rt5682->regmap, RT5682_GPIO_CTRL_1,
				RT5682_GP3_PIN_MASK, RT5682_GP3_PIN_DMIC_CLK);
			break;

		default:
			FUNC6(&i2c->dev, "invalid DMIC_CLK pin\n");
			break;
		}
	}

	FUNC19(rt5682->regmap, RT5682_PWR_ANLG_1,
			RT5682_LDO1_DVO_MASK | RT5682_HP_DRIVER_MASK,
			RT5682_LDO1_DVO_12 | RT5682_HP_DRIVER_5X);
	FUNC20(rt5682->regmap, RT5682_MICBIAS_2, 0x0380);
	FUNC19(rt5682->regmap, RT5682_GPIO_CTRL_1,
			RT5682_GP4_PIN_MASK | RT5682_GP5_PIN_MASK,
			RT5682_GP4_PIN_ADCDAT1 | RT5682_GP5_PIN_DACDAT1);
	FUNC20(rt5682->regmap, RT5682_TEST_MODE_CTRL_1, 0x0000);
	FUNC19(rt5682->regmap, RT5682_BIAS_CUR_CTRL_8,
			RT5682_HPA_CP_BIAS_CTRL_MASK, RT5682_HPA_CP_BIAS_3UA);
	FUNC19(rt5682->regmap, RT5682_CHARGE_PUMP_1,
			RT5682_CP_CLK_HP_MASK, RT5682_CP_CLK_HP_300KHZ);

	FUNC1(&rt5682->jack_detect_work,
				rt5682_jack_detect_handler);
	FUNC1(&rt5682->jd_check_work,
				rt5682_jd_check_handler);


	if (i2c->irq) {
		ret = FUNC11(&i2c->dev, i2c->irq, NULL,
			rt5682_irq, IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING
			| IRQF_ONESHOT, "rt5682", rt5682);
		if (ret)
			FUNC4(&i2c->dev, "Failed to reguest IRQ: %d\n", ret);

	}

	return FUNC12(&i2c->dev,
					&soc_component_dev_rt5682,
					rt5682_dai, FUNC0(rt5682_dai));
}