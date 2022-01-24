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
struct rt5659_platform_data {int dmic1_data_pin; int dmic2_data_pin; int jd_src; scalar_t__ in4_diff; scalar_t__ in3_diff; scalar_t__ in1_diff; } ;
struct rt5659_priv {int /*<<< orphan*/ * regmap; int /*<<< orphan*/  jack_detect_work; struct rt5659_platform_data pdata; int /*<<< orphan*/ * mclk; void* gpiod_reset; int /*<<< orphan*/ * gpiod_ldo1_en; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int DEVICE_ID ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RT5659_DEVICE_ID ; 
#define  RT5659_DMIC1_DATA_GPIO11 137 
#define  RT5659_DMIC1_DATA_GPIO5 136 
#define  RT5659_DMIC1_DATA_GPIO9 135 
#define  RT5659_DMIC1_DATA_IN2N 134 
 int RT5659_DMIC1_NULL ; 
#define  RT5659_DMIC2_DATA_GPIO10 133 
#define  RT5659_DMIC2_DATA_GPIO12 132 
#define  RT5659_DMIC2_DATA_GPIO6 131 
#define  RT5659_DMIC2_DATA_IN2P 130 
 int RT5659_DMIC2_NULL ; 
 int RT5659_DMIC_1_DP_GPIO11 ; 
 int RT5659_DMIC_1_DP_GPIO5 ; 
 int RT5659_DMIC_1_DP_GPIO9 ; 
 int RT5659_DMIC_1_DP_IN2N ; 
 int RT5659_DMIC_1_DP_MASK ; 
 int RT5659_DMIC_2_DP_GPIO10 ; 
 int RT5659_DMIC_2_DP_GPIO12 ; 
 int RT5659_DMIC_2_DP_GPIO6 ; 
 int RT5659_DMIC_2_DP_IN2P ; 
 int RT5659_DMIC_2_DP_MASK ; 
 int /*<<< orphan*/  RT5659_DMIC_CTRL_1 ; 
 int /*<<< orphan*/  RT5659_EJD_CTRL_1 ; 
 int RT5659_GP10_PIN_DMIC2_SDA ; 
 int RT5659_GP10_PIN_GPIO10 ; 
 int RT5659_GP10_PIN_MASK ; 
 int RT5659_GP11_PIN_DMIC1_SDA ; 
 int RT5659_GP11_PIN_GPIO11 ; 
 int RT5659_GP11_PIN_MASK ; 
 int RT5659_GP12_PIN_DMIC2_SDA ; 
 int RT5659_GP12_PIN_GPIO12 ; 
 int RT5659_GP12_PIN_MASK ; 
 int RT5659_GP1_PIN_IRQ ; 
 int RT5659_GP1_PIN_MASK ; 
 int RT5659_GP2_PIN_DMIC1_SCL ; 
 int RT5659_GP2_PIN_GPIO2 ; 
 int RT5659_GP2_PIN_MASK ; 
 int RT5659_GP5_PIN_DMIC1_SDA ; 
 int RT5659_GP5_PIN_GPIO5 ; 
 int RT5659_GP5_PIN_MASK ; 
 int RT5659_GP6_PIN_DMIC2_SDA ; 
 int RT5659_GP6_PIN_GPIO6 ; 
 int RT5659_GP6_PIN_MASK ; 
 int RT5659_GP9_PIN_DMIC1_SDA ; 
 int RT5659_GP9_PIN_GPIO9 ; 
 int RT5659_GP9_PIN_MASK ; 
 int /*<<< orphan*/  RT5659_GPIO_CTRL_1 ; 
 int /*<<< orphan*/  RT5659_GPIO_CTRL_3 ; 
 int RT5659_I2S2_PIN_GPIO ; 
 int RT5659_I2S2_PIN_MASK ; 
 int RT5659_IN1_DF_MASK ; 
 int /*<<< orphan*/  RT5659_IN1_IN2 ; 
 int RT5659_IN3_DF_MASK ; 
 int /*<<< orphan*/  RT5659_IN3_IN4 ; 
 int RT5659_IN4_DF_MASK ; 
 int /*<<< orphan*/  RT5659_IRQ_CTRL_1 ; 
 int /*<<< orphan*/  RT5659_IRQ_CTRL_2 ; 
#define  RT5659_JD3 129 
 int /*<<< orphan*/  RT5659_JD_CTRL_1 ; 
#define  RT5659_JD_HDA_HEADER 128 
 int /*<<< orphan*/  RT5659_PWR_ANLG_1 ; 
 int /*<<< orphan*/  RT5659_PWR_ANLG_2 ; 
 int RT5659_PWR_MB ; 
 int /*<<< orphan*/  RT5659_RC_CLK_CTRL ; 
 int /*<<< orphan*/  RT5659_RESET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 struct rt5659_platform_data* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct rt5659_priv* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct rt5659_priv*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*,struct rt5659_priv*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct rt5659_priv*) ; 
 int /*<<< orphan*/  rt5659_dai ; 
 int /*<<< orphan*/  FUNC20 (struct rt5659_priv*) ; 
 int /*<<< orphan*/  rt5659_irq ; 
 int /*<<< orphan*/  rt5659_jack_detect_intel_hd_header ; 
 int /*<<< orphan*/  rt5659_jack_detect_work ; 
 int /*<<< orphan*/  FUNC21 (struct rt5659_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rt5659_regmap ; 
 int /*<<< orphan*/  soc_component_dev_rt5659 ; 

__attribute__((used)) static int FUNC22(struct i2c_client *i2c,
		    const struct i2c_device_id *id)
{
	struct rt5659_platform_data *pdata = FUNC6(&i2c->dev);
	struct rt5659_priv *rt5659;
	int ret;
	unsigned int val;

	rt5659 = FUNC10(&i2c->dev, sizeof(struct rt5659_priv),
		GFP_KERNEL);

	if (rt5659 == NULL)
		return -ENOMEM;

	FUNC14(i2c, rt5659);

	if (pdata)
		rt5659->pdata = *pdata;
	else
		FUNC21(rt5659, &i2c->dev);

	rt5659->gpiod_ldo1_en = FUNC9(&i2c->dev, "ldo1-en",
							GPIOD_OUT_HIGH);
	if (FUNC2(rt5659->gpiod_ldo1_en))
		FUNC7(&i2c->dev, "Request ldo1-en GPIO failed\n");

	rt5659->gpiod_reset = FUNC9(&i2c->dev, "reset",
							GPIOD_OUT_HIGH);

	/* Sleep for 300 ms miniumum */
	FUNC15(300);

	rt5659->regmap = FUNC11(i2c, &rt5659_regmap);
	if (FUNC2(rt5659->regmap)) {
		ret = FUNC3(rt5659->regmap);
		FUNC5(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	FUNC16(rt5659->regmap, RT5659_DEVICE_ID, &val);
	if (val != DEVICE_ID) {
		FUNC5(&i2c->dev,
			"Device with ID register %x is not rt5659\n", val);
		return -ENODEV;
	}

	FUNC18(rt5659->regmap, RT5659_RESET, 0);

	/* Check if MCLK provided */
	rt5659->mclk = FUNC8(&i2c->dev, "mclk");
	if (FUNC2(rt5659->mclk)) {
		if (FUNC3(rt5659->mclk) != -ENOENT)
			return FUNC3(rt5659->mclk);
		/* Otherwise mark the mclk pointer to NULL */
		rt5659->mclk = NULL;
	}

	FUNC19(rt5659);

	/* line in diff mode*/
	if (rt5659->pdata.in1_diff)
		FUNC17(rt5659->regmap, RT5659_IN1_IN2,
			RT5659_IN1_DF_MASK, RT5659_IN1_DF_MASK);
	if (rt5659->pdata.in3_diff)
		FUNC17(rt5659->regmap, RT5659_IN3_IN4,
			RT5659_IN3_DF_MASK, RT5659_IN3_DF_MASK);
	if (rt5659->pdata.in4_diff)
		FUNC17(rt5659->regmap, RT5659_IN3_IN4,
			RT5659_IN4_DF_MASK, RT5659_IN4_DF_MASK);

	/* DMIC pin*/
	if (rt5659->pdata.dmic1_data_pin != RT5659_DMIC1_NULL ||
		rt5659->pdata.dmic2_data_pin != RT5659_DMIC2_NULL) {
		FUNC17(rt5659->regmap, RT5659_GPIO_CTRL_1,
			RT5659_GP2_PIN_MASK, RT5659_GP2_PIN_DMIC1_SCL);

		switch (rt5659->pdata.dmic1_data_pin) {
		case RT5659_DMIC1_DATA_IN2N:
			FUNC17(rt5659->regmap, RT5659_DMIC_CTRL_1,
				RT5659_DMIC_1_DP_MASK, RT5659_DMIC_1_DP_IN2N);
			break;

		case RT5659_DMIC1_DATA_GPIO5:
			FUNC17(rt5659->regmap,
				RT5659_GPIO_CTRL_3,
				RT5659_I2S2_PIN_MASK,
				RT5659_I2S2_PIN_GPIO);
			FUNC17(rt5659->regmap, RT5659_DMIC_CTRL_1,
				RT5659_DMIC_1_DP_MASK, RT5659_DMIC_1_DP_GPIO5);
			FUNC17(rt5659->regmap, RT5659_GPIO_CTRL_1,
				RT5659_GP5_PIN_MASK, RT5659_GP5_PIN_DMIC1_SDA);
			break;

		case RT5659_DMIC1_DATA_GPIO9:
			FUNC17(rt5659->regmap, RT5659_DMIC_CTRL_1,
				RT5659_DMIC_1_DP_MASK, RT5659_DMIC_1_DP_GPIO9);
			FUNC17(rt5659->regmap, RT5659_GPIO_CTRL_1,
				RT5659_GP9_PIN_MASK, RT5659_GP9_PIN_DMIC1_SDA);
			break;

		case RT5659_DMIC1_DATA_GPIO11:
			FUNC17(rt5659->regmap, RT5659_DMIC_CTRL_1,
				RT5659_DMIC_1_DP_MASK, RT5659_DMIC_1_DP_GPIO11);
			FUNC17(rt5659->regmap, RT5659_GPIO_CTRL_1,
				RT5659_GP11_PIN_MASK,
				RT5659_GP11_PIN_DMIC1_SDA);
			break;

		default:
			FUNC4(&i2c->dev, "no DMIC1\n");
			break;
		}

		switch (rt5659->pdata.dmic2_data_pin) {
		case RT5659_DMIC2_DATA_IN2P:
			FUNC17(rt5659->regmap,
				RT5659_DMIC_CTRL_1,
				RT5659_DMIC_2_DP_MASK,
				RT5659_DMIC_2_DP_IN2P);
			break;

		case RT5659_DMIC2_DATA_GPIO6:
			FUNC17(rt5659->regmap,
				RT5659_DMIC_CTRL_1,
				RT5659_DMIC_2_DP_MASK,
				RT5659_DMIC_2_DP_GPIO6);
			FUNC17(rt5659->regmap,
				RT5659_GPIO_CTRL_1,
				RT5659_GP6_PIN_MASK,
				RT5659_GP6_PIN_DMIC2_SDA);
			break;

		case RT5659_DMIC2_DATA_GPIO10:
			FUNC17(rt5659->regmap,
				RT5659_DMIC_CTRL_1,
				RT5659_DMIC_2_DP_MASK,
				RT5659_DMIC_2_DP_GPIO10);
			FUNC17(rt5659->regmap,
				RT5659_GPIO_CTRL_1,
				RT5659_GP10_PIN_MASK,
				RT5659_GP10_PIN_DMIC2_SDA);
			break;

		case RT5659_DMIC2_DATA_GPIO12:
			FUNC17(rt5659->regmap,
				RT5659_DMIC_CTRL_1,
				RT5659_DMIC_2_DP_MASK,
				RT5659_DMIC_2_DP_GPIO12);
			FUNC17(rt5659->regmap,
				RT5659_GPIO_CTRL_1,
				RT5659_GP12_PIN_MASK,
				RT5659_GP12_PIN_DMIC2_SDA);
			break;

		default:
			FUNC4(&i2c->dev, "no DMIC2\n");
			break;

		}
	} else {
		FUNC17(rt5659->regmap, RT5659_GPIO_CTRL_1,
			RT5659_GP2_PIN_MASK | RT5659_GP5_PIN_MASK |
			RT5659_GP9_PIN_MASK | RT5659_GP11_PIN_MASK |
			RT5659_GP6_PIN_MASK | RT5659_GP10_PIN_MASK |
			RT5659_GP12_PIN_MASK,
			RT5659_GP2_PIN_GPIO2 | RT5659_GP5_PIN_GPIO5 |
			RT5659_GP9_PIN_GPIO9 | RT5659_GP11_PIN_GPIO11 |
			RT5659_GP6_PIN_GPIO6 | RT5659_GP10_PIN_GPIO10 |
			RT5659_GP12_PIN_GPIO12);
		FUNC17(rt5659->regmap, RT5659_DMIC_CTRL_1,
			RT5659_DMIC_1_DP_MASK | RT5659_DMIC_2_DP_MASK,
			RT5659_DMIC_1_DP_IN2N | RT5659_DMIC_2_DP_IN2P);
	}

	switch (rt5659->pdata.jd_src) {
	case RT5659_JD3:
		FUNC18(rt5659->regmap, RT5659_EJD_CTRL_1, 0xa880);
		FUNC18(rt5659->regmap, RT5659_RC_CLK_CTRL, 0x9000);
		FUNC18(rt5659->regmap, RT5659_GPIO_CTRL_1, 0xc800);
		FUNC17(rt5659->regmap, RT5659_PWR_ANLG_1,
				RT5659_PWR_MB, RT5659_PWR_MB);
		FUNC18(rt5659->regmap, RT5659_PWR_ANLG_2, 0x0001);
		FUNC18(rt5659->regmap, RT5659_IRQ_CTRL_2, 0x0040);
		FUNC1(&rt5659->jack_detect_work,
			rt5659_jack_detect_work);
		break;
	case RT5659_JD_HDA_HEADER:
		FUNC18(rt5659->regmap, RT5659_GPIO_CTRL_3, 0x8000);
		FUNC18(rt5659->regmap, RT5659_RC_CLK_CTRL, 0x0900);
		FUNC18(rt5659->regmap, RT5659_EJD_CTRL_1,  0x70c0);
		FUNC18(rt5659->regmap, RT5659_JD_CTRL_1,   0x2000);
		FUNC18(rt5659->regmap, RT5659_IRQ_CTRL_1,  0x0040);
		FUNC1(&rt5659->jack_detect_work,
			rt5659_jack_detect_intel_hd_header);
		FUNC20(rt5659);
		break;
	default:
		break;
	}

	if (i2c->irq) {
		ret = FUNC12(&i2c->dev, i2c->irq, NULL,
			rt5659_irq, IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING
			| IRQF_ONESHOT, "rt5659", rt5659);
		if (ret)
			FUNC5(&i2c->dev, "Failed to reguest IRQ: %d\n", ret);

		/* Enable IRQ output for GPIO1 pin any way */
		FUNC17(rt5659->regmap, RT5659_GPIO_CTRL_1,
				   RT5659_GP1_PIN_MASK, RT5659_GP1_PIN_IRQ);
	}

	return FUNC13(&i2c->dev,
			&soc_component_dev_rt5659,
			rt5659_dai, FUNC0(rt5659_dai));
}