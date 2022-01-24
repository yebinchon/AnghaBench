#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rt5668_platform_data {int dmic1_data_pin; int dmic1_clk_pin; int /*<<< orphan*/  ldo1_en; } ;
struct rt5668_priv {int /*<<< orphan*/  calibrate_mutex; int /*<<< orphan*/  jd_check_work; int /*<<< orphan*/  jack_detect_work; int /*<<< orphan*/  regmap; struct rt5668_platform_data pdata; TYPE_1__* supplies; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; scalar_t__ irq; } ;
struct TYPE_6__ {int /*<<< orphan*/  supply; } ;

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
 int /*<<< orphan*/  RT5668_DEPOP_1 ; 
 int /*<<< orphan*/  RT5668_DEVICE_ID ; 
#define  RT5668_DMIC1_CLK_GPIO1 131 
#define  RT5668_DMIC1_CLK_GPIO3 130 
#define  RT5668_DMIC1_DATA_GPIO2 129 
#define  RT5668_DMIC1_DATA_GPIO5 128 
 int RT5668_DMIC1_NULL ; 
 int RT5668_DMIC_1_DP_GPIO2 ; 
 int RT5668_DMIC_1_DP_GPIO5 ; 
 int RT5668_DMIC_1_DP_MASK ; 
 int /*<<< orphan*/  RT5668_DMIC_CTRL_1 ; 
 int RT5668_GP1_PIN_DMIC_CLK ; 
 int RT5668_GP1_PIN_MASK ; 
 int RT5668_GP2_PIN_DMIC_SDA ; 
 int RT5668_GP2_PIN_MASK ; 
 int RT5668_GP3_PIN_DMIC_CLK ; 
 int RT5668_GP3_PIN_MASK ; 
 int RT5668_GP4_PIN_ADCDAT1 ; 
 int RT5668_GP4_PIN_MASK ; 
 int RT5668_GP5_PIN_DACDAT1 ; 
 int RT5668_GP5_PIN_DMIC_SDA ; 
 int RT5668_GP5_PIN_MASK ; 
 int /*<<< orphan*/  RT5668_GPIO_CTRL_1 ; 
 int RT5668_HP_DRIVER_5X ; 
 int RT5668_HP_DRIVER_MASK ; 
 int /*<<< orphan*/  RT5668_I2C_MODE ; 
 int RT5668_LDO1_DVO_14 ; 
 int RT5668_LDO1_DVO_MASK ; 
 int /*<<< orphan*/  RT5668_MICBIAS_2 ; 
 int /*<<< orphan*/  RT5668_PWR_ANLG_1 ; 
 int /*<<< orphan*/  RT5668_TEST_MODE_CTRL_1 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 struct rt5668_platform_data* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct rt5668_priv* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct rt5668_priv*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*,struct rt5668_priv*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (struct rt5668_priv*) ; 
 TYPE_1__* rt5668_dai ; 
 int /*<<< orphan*/  rt5668_irq ; 
 int /*<<< orphan*/  rt5668_jack_detect_handler ; 
 int /*<<< orphan*/  rt5668_jd_check_handler ; 
 int /*<<< orphan*/  FUNC22 (struct rt5668_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rt5668_regmap ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rt5668_supply_names ; 
 int /*<<< orphan*/  soc_component_dev_rt5668 ; 
 int /*<<< orphan*/  FUNC24 (int,int) ; 

__attribute__((used)) static int FUNC25(struct i2c_client *i2c,
		    const struct i2c_device_id *id)
{
	struct rt5668_platform_data *pdata = FUNC6(&i2c->dev);
	struct rt5668_priv *rt5668;
	int i, ret;
	unsigned int val;

	rt5668 = FUNC8(&i2c->dev, sizeof(struct rt5668_priv),
		GFP_KERNEL);

	if (rt5668 == NULL)
		return -ENOMEM;

	FUNC14(i2c, rt5668);

	if (pdata)
		rt5668->pdata = *pdata;
	else
		FUNC22(rt5668, &i2c->dev);

	rt5668->regmap = FUNC9(i2c, &rt5668_regmap);
	if (FUNC2(rt5668->regmap)) {
		ret = FUNC3(rt5668->regmap);
		FUNC5(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	for (i = 0; i < FUNC0(rt5668->supplies); i++)
		rt5668->supplies[i].supply = rt5668_supply_names[i];

	ret = FUNC10(&i2c->dev, FUNC0(rt5668->supplies),
				      rt5668->supplies);
	if (ret != 0) {
		FUNC5(&i2c->dev, "Failed to request supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC20(FUNC0(rt5668->supplies),
				    rt5668->supplies);
	if (ret != 0) {
		FUNC5(&i2c->dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	if (FUNC13(rt5668->pdata.ldo1_en)) {
		if (FUNC7(&i2c->dev, rt5668->pdata.ldo1_en,
					  GPIOF_OUT_INIT_HIGH, "rt5668"))
			FUNC5(&i2c->dev, "Fail gpio_request gpio_ldo\n");
	}

	/* Sleep for 300 ms miniumum */
	FUNC24(300000, 350000);

	FUNC19(rt5668->regmap, RT5668_I2C_MODE, 0x1);
	FUNC24(10000, 15000);

	FUNC17(rt5668->regmap, RT5668_DEVICE_ID, &val);
	if (val != DEVICE_ID) {
		FUNC16("Device with ID register %x is not rt5668\n", val);
		return -ENODEV;
	}

	FUNC23(rt5668->regmap);

	FUNC21(rt5668);

	FUNC19(rt5668->regmap, RT5668_DEPOP_1, 0x0000);

	/* DMIC pin*/
	if (rt5668->pdata.dmic1_data_pin != RT5668_DMIC1_NULL) {
		switch (rt5668->pdata.dmic1_data_pin) {
		case RT5668_DMIC1_DATA_GPIO2: /* share with LRCK2 */
			FUNC18(rt5668->regmap, RT5668_DMIC_CTRL_1,
				RT5668_DMIC_1_DP_MASK, RT5668_DMIC_1_DP_GPIO2);
			FUNC18(rt5668->regmap, RT5668_GPIO_CTRL_1,
				RT5668_GP2_PIN_MASK, RT5668_GP2_PIN_DMIC_SDA);
			break;

		case RT5668_DMIC1_DATA_GPIO5: /* share with DACDAT1 */
			FUNC18(rt5668->regmap, RT5668_DMIC_CTRL_1,
				RT5668_DMIC_1_DP_MASK, RT5668_DMIC_1_DP_GPIO5);
			FUNC18(rt5668->regmap, RT5668_GPIO_CTRL_1,
				RT5668_GP5_PIN_MASK, RT5668_GP5_PIN_DMIC_SDA);
			break;

		default:
			FUNC4(&i2c->dev, "invalid DMIC_DAT pin\n");
			break;
		}

		switch (rt5668->pdata.dmic1_clk_pin) {
		case RT5668_DMIC1_CLK_GPIO1: /* share with IRQ */
			FUNC18(rt5668->regmap, RT5668_GPIO_CTRL_1,
				RT5668_GP1_PIN_MASK, RT5668_GP1_PIN_DMIC_CLK);
			break;

		case RT5668_DMIC1_CLK_GPIO3: /* share with BCLK2 */
			FUNC18(rt5668->regmap, RT5668_GPIO_CTRL_1,
				RT5668_GP3_PIN_MASK, RT5668_GP3_PIN_DMIC_CLK);
			break;

		default:
			FUNC4(&i2c->dev, "invalid DMIC_CLK pin\n");
			break;
		}
	}

	FUNC18(rt5668->regmap, RT5668_PWR_ANLG_1,
			RT5668_LDO1_DVO_MASK | RT5668_HP_DRIVER_MASK,
			RT5668_LDO1_DVO_14 | RT5668_HP_DRIVER_5X);
	FUNC19(rt5668->regmap, RT5668_MICBIAS_2, 0x0380);
	FUNC18(rt5668->regmap, RT5668_GPIO_CTRL_1,
			RT5668_GP4_PIN_MASK | RT5668_GP5_PIN_MASK,
			RT5668_GP4_PIN_ADCDAT1 | RT5668_GP5_PIN_DACDAT1);
	FUNC19(rt5668->regmap, RT5668_TEST_MODE_CTRL_1, 0x0000);

	FUNC1(&rt5668->jack_detect_work,
				rt5668_jack_detect_handler);
	FUNC1(&rt5668->jd_check_work,
				rt5668_jd_check_handler);

	FUNC15(&rt5668->calibrate_mutex);

	if (i2c->irq) {
		ret = FUNC11(&i2c->dev, i2c->irq, NULL,
			rt5668_irq, IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING
			| IRQF_ONESHOT, "rt5668", rt5668);
		if (ret)
			FUNC5(&i2c->dev, "Failed to reguest IRQ: %d\n", ret);

	}

	return FUNC12(&i2c->dev, &soc_component_dev_rt5668,
			rt5668_dai, FUNC0(rt5668_dai));
}