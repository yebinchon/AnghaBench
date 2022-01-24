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
struct rt5665_platform_data {int dmic1_data_pin; int dmic2_data_pin; scalar_t__ in4_diff; scalar_t__ in3_diff; scalar_t__ in2_diff; scalar_t__ in1_diff; int /*<<< orphan*/  ldo1_en; } ;
struct rt5665_priv {scalar_t__ id; int /*<<< orphan*/  calibrate_mutex; int /*<<< orphan*/  jd_check_work; int /*<<< orphan*/  calibrate_work; int /*<<< orphan*/  jack_detect_work; int /*<<< orphan*/  regmap; struct rt5665_platform_data pdata; TYPE_1__* supplies; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; scalar_t__ irq; } ;
struct TYPE_6__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ CODEC_5665 ; 
 scalar_t__ CODEC_5666 ; 
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
 int RT5665_DEB_80_MS ; 
 int RT5665_DEB_STO_DAC_MASK ; 
 int /*<<< orphan*/  RT5665_DEVICE_ID ; 
#define  RT5665_DMIC1_DATA_GPIO4 131 
#define  RT5665_DMIC1_DATA_IN2N 130 
 int RT5665_DMIC1_NULL ; 
#define  RT5665_DMIC2_DATA_GPIO5 129 
#define  RT5665_DMIC2_DATA_IN2P 128 
 int RT5665_DMIC2_NULL ; 
 int RT5665_DMIC_1_DP_GPIO4 ; 
 int RT5665_DMIC_1_DP_IN2N ; 
 int RT5665_DMIC_1_DP_MASK ; 
 int RT5665_DMIC_2_DP_GPIO5 ; 
 int RT5665_DMIC_2_DP_IN2P ; 
 int RT5665_DMIC_2_DP_MASK ; 
 int /*<<< orphan*/  RT5665_DMIC_CTRL_1 ; 
 int /*<<< orphan*/  RT5665_EJD_CTRL_1 ; 
 int RT5665_GP4_PF_IN ; 
 int RT5665_GP4_PF_MASK ; 
 int RT5665_GP4_PIN_DMIC1_SDA ; 
 int RT5665_GP4_PIN_MASK ; 
 int RT5665_GP5_PIN_DMIC2_SDA ; 
 int RT5665_GP5_PIN_MASK ; 
 int RT5665_GP8_PF_IN ; 
 int RT5665_GP8_PF_MASK ; 
 int RT5665_GP8_PIN_DMIC2_SCL ; 
 int RT5665_GP8_PIN_MASK ; 
 int RT5665_GP9_PIN_DMIC1_SCL ; 
 int RT5665_GP9_PIN_MASK ; 
 int /*<<< orphan*/  RT5665_GPIO_CTRL_1 ; 
 int /*<<< orphan*/  RT5665_GPIO_CTRL_2 ; 
 int /*<<< orphan*/  RT5665_GPIO_CTRL_3 ; 
 int /*<<< orphan*/  RT5665_HP_CHARGE_PUMP_1 ; 
 int RT5665_HP_DRIVER_5X ; 
 int RT5665_HP_DRIVER_MASK ; 
 int /*<<< orphan*/  RT5665_HP_LOGIC_CTRL_2 ; 
 int RT5665_IN1_DF_MASK ; 
 int /*<<< orphan*/  RT5665_IN1_IN2 ; 
 int RT5665_IN2_DF_MASK ; 
 int RT5665_IN3_DF_MASK ; 
 int /*<<< orphan*/  RT5665_IN3_IN4 ; 
 int RT5665_IN4_DF_MASK ; 
 int RT5665_LDO1_DVO_12 ; 
 int RT5665_LDO1_DVO_MASK ; 
 int RT5665_PM_HP_HV ; 
 int RT5665_PM_HP_MASK ; 
 int /*<<< orphan*/  RT5665_PWR_ANLG_1 ; 
 int /*<<< orphan*/  RT5665_RESET ; 
 int /*<<< orphan*/  RT5665_STO1_DAC_SIL_DET ; 
 int RT5665_VREF_POW_MASK ; 
 int RT5665_VREF_POW_REG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 struct rt5665_platform_data* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct rt5665_priv* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct rt5665_priv*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*,struct rt5665_priv*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  rt5665_calibrate_handler ; 
 TYPE_1__* rt5665_dai ; 
 int /*<<< orphan*/  rt5665_irq ; 
 int /*<<< orphan*/  rt5665_jack_detect_handler ; 
 int /*<<< orphan*/  rt5665_jd_check_handler ; 
 int /*<<< orphan*/  FUNC20 (struct rt5665_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rt5665_regmap ; 
 int /*<<< orphan*/ * rt5665_supply_names ; 
 int /*<<< orphan*/  soc_component_dev_rt5665 ; 
 int /*<<< orphan*/  FUNC21 (int,int) ; 

__attribute__((used)) static int FUNC22(struct i2c_client *i2c,
		    const struct i2c_device_id *id)
{
	struct rt5665_platform_data *pdata = FUNC6(&i2c->dev);
	struct rt5665_priv *rt5665;
	int i, ret;
	unsigned int val;

	rt5665 = FUNC8(&i2c->dev, sizeof(struct rt5665_priv),
		GFP_KERNEL);

	if (rt5665 == NULL)
		return -ENOMEM;

	FUNC14(i2c, rt5665);

	if (pdata)
		rt5665->pdata = *pdata;
	else
		FUNC20(rt5665, &i2c->dev);

	for (i = 0; i < FUNC0(rt5665->supplies); i++)
		rt5665->supplies[i].supply = rt5665_supply_names[i];

	ret = FUNC10(&i2c->dev, FUNC0(rt5665->supplies),
				      rt5665->supplies);
	if (ret != 0) {
		FUNC5(&i2c->dev, "Failed to request supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC19(FUNC0(rt5665->supplies),
				    rt5665->supplies);
	if (ret != 0) {
		FUNC5(&i2c->dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	if (FUNC13(rt5665->pdata.ldo1_en)) {
		if (FUNC7(&i2c->dev, rt5665->pdata.ldo1_en,
					  GPIOF_OUT_INIT_HIGH, "rt5665"))
			FUNC5(&i2c->dev, "Fail gpio_request gpio_ldo\n");
	}

	/* Sleep for 300 ms miniumum */
	FUNC21(300000, 350000);

	rt5665->regmap = FUNC9(i2c, &rt5665_regmap);
	if (FUNC2(rt5665->regmap)) {
		ret = FUNC3(rt5665->regmap);
		FUNC5(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	FUNC16(rt5665->regmap, RT5665_DEVICE_ID, &val);
	if (val != DEVICE_ID) {
		FUNC5(&i2c->dev,
			"Device with ID register %x is not rt5665\n", val);
		return -ENODEV;
	}

	FUNC16(rt5665->regmap, RT5665_RESET, &val);
	switch (val) {
	case 0x0:
		rt5665->id = CODEC_5666;
		break;
	case 0x3:
	default:
		rt5665->id = CODEC_5665;
		break;
	}

	FUNC18(rt5665->regmap, RT5665_RESET, 0);

	/* line in diff mode*/
	if (rt5665->pdata.in1_diff)
		FUNC17(rt5665->regmap, RT5665_IN1_IN2,
			RT5665_IN1_DF_MASK, RT5665_IN1_DF_MASK);
	if (rt5665->pdata.in2_diff)
		FUNC17(rt5665->regmap, RT5665_IN1_IN2,
			RT5665_IN2_DF_MASK, RT5665_IN2_DF_MASK);
	if (rt5665->pdata.in3_diff)
		FUNC17(rt5665->regmap, RT5665_IN3_IN4,
			RT5665_IN3_DF_MASK, RT5665_IN3_DF_MASK);
	if (rt5665->pdata.in4_diff)
		FUNC17(rt5665->regmap, RT5665_IN3_IN4,
			RT5665_IN4_DF_MASK, RT5665_IN4_DF_MASK);

	/* DMIC pin*/
	if (rt5665->pdata.dmic1_data_pin != RT5665_DMIC1_NULL ||
		rt5665->pdata.dmic2_data_pin != RT5665_DMIC2_NULL) {
		FUNC17(rt5665->regmap, RT5665_GPIO_CTRL_2,
			RT5665_GP9_PIN_MASK, RT5665_GP9_PIN_DMIC1_SCL);
		FUNC17(rt5665->regmap, RT5665_GPIO_CTRL_1,
				RT5665_GP8_PIN_MASK, RT5665_GP8_PIN_DMIC2_SCL);
		switch (rt5665->pdata.dmic1_data_pin) {
		case RT5665_DMIC1_DATA_IN2N:
			FUNC17(rt5665->regmap, RT5665_DMIC_CTRL_1,
				RT5665_DMIC_1_DP_MASK, RT5665_DMIC_1_DP_IN2N);
			break;

		case RT5665_DMIC1_DATA_GPIO4:
			FUNC17(rt5665->regmap, RT5665_DMIC_CTRL_1,
				RT5665_DMIC_1_DP_MASK, RT5665_DMIC_1_DP_GPIO4);
			FUNC17(rt5665->regmap, RT5665_GPIO_CTRL_1,
				RT5665_GP4_PIN_MASK, RT5665_GP4_PIN_DMIC1_SDA);
			break;

		default:
			FUNC4(&i2c->dev, "no DMIC1\n");
			break;
		}

		switch (rt5665->pdata.dmic2_data_pin) {
		case RT5665_DMIC2_DATA_IN2P:
			FUNC17(rt5665->regmap, RT5665_DMIC_CTRL_1,
				RT5665_DMIC_2_DP_MASK, RT5665_DMIC_2_DP_IN2P);
			break;

		case RT5665_DMIC2_DATA_GPIO5:
			FUNC17(rt5665->regmap,
				RT5665_DMIC_CTRL_1,
				RT5665_DMIC_2_DP_MASK,
				RT5665_DMIC_2_DP_GPIO5);
			FUNC17(rt5665->regmap, RT5665_GPIO_CTRL_1,
				RT5665_GP5_PIN_MASK, RT5665_GP5_PIN_DMIC2_SDA);
			break;

		default:
			FUNC4(&i2c->dev, "no DMIC2\n");
			break;

		}
	}

	FUNC18(rt5665->regmap, RT5665_HP_LOGIC_CTRL_2, 0x0002);
	FUNC17(rt5665->regmap, RT5665_EJD_CTRL_1,
		0xf000 | RT5665_VREF_POW_MASK, 0xe000 | RT5665_VREF_POW_REG);
	/* Work around for pow_pump */
	FUNC17(rt5665->regmap, RT5665_STO1_DAC_SIL_DET,
		RT5665_DEB_STO_DAC_MASK, RT5665_DEB_80_MS);

	FUNC17(rt5665->regmap, RT5665_HP_CHARGE_PUMP_1,
		RT5665_PM_HP_MASK, RT5665_PM_HP_HV);

	/* Set GPIO4,8 as input for combo jack */
	if (rt5665->id == CODEC_5666) {
		FUNC17(rt5665->regmap, RT5665_GPIO_CTRL_2,
			RT5665_GP4_PF_MASK, RT5665_GP4_PF_IN);
		FUNC17(rt5665->regmap, RT5665_GPIO_CTRL_3,
			RT5665_GP8_PF_MASK, RT5665_GP8_PF_IN);
	}

	/* Enhance performance*/
	FUNC17(rt5665->regmap, RT5665_PWR_ANLG_1,
		RT5665_HP_DRIVER_MASK | RT5665_LDO1_DVO_MASK,
		RT5665_HP_DRIVER_5X | RT5665_LDO1_DVO_12);

	FUNC1(&rt5665->jack_detect_work,
				rt5665_jack_detect_handler);
	FUNC1(&rt5665->calibrate_work,
				rt5665_calibrate_handler);
	FUNC1(&rt5665->jd_check_work,
				rt5665_jd_check_handler);

	FUNC15(&rt5665->calibrate_mutex);

	if (i2c->irq) {
		ret = FUNC11(&i2c->dev, i2c->irq, NULL,
			rt5665_irq, IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING
			| IRQF_ONESHOT, "rt5665", rt5665);
		if (ret)
			FUNC5(&i2c->dev, "Failed to reguest IRQ: %d\n", ret);

	}

	return FUNC12(&i2c->dev,
			&soc_component_dev_rt5665,
			rt5665_dai, FUNC0(rt5665_dai));
}