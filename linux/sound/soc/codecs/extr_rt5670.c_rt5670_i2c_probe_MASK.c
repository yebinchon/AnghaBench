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
struct rt5670_platform_data {int dev_gpio; int in2_diff; int dmic_en; int dmic1_data_pin; int dmic2_data_pin; int dmic3_data_pin; int jd_mode; } ;
struct rt5670_priv {int /*<<< orphan*/  regmap; struct rt5670_platform_data pdata; int /*<<< orphan*/  sysclk_src; scalar_t__ sysclk; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT5670_A_JD_CTRL1 ; 
 unsigned int RT5670_DEVICE_ID ; 
 int RT5670_DEV_GPIO ; 
 int /*<<< orphan*/  RT5670_DIG_MISC ; 
 int RT5670_DMIC1_GPIO6 ; 
 int RT5670_DMIC1_GPIO7 ; 
 int RT5670_DMIC1_IN2P ; 
 int RT5670_DMIC2_GPIO8 ; 
 int RT5670_DMIC2_INR ; 
 int RT5670_DMIC3_GPIO5 ; 
 int RT5670_DMIC_1_DP_GPIO6 ; 
 int RT5670_DMIC_1_DP_GPIO7 ; 
 int RT5670_DMIC_1_DP_IN2P ; 
 int RT5670_DMIC_1_DP_MASK ; 
 int RT5670_DMIC_2_DP_GPIO8 ; 
 int RT5670_DMIC_2_DP_IN3N ; 
 int RT5670_DMIC_2_DP_MASK ; 
 int RT5670_DMIC_3_DP_GPIO5 ; 
 int RT5670_DMIC_3_DP_MASK ; 
 int /*<<< orphan*/  RT5670_DMIC_CTRL1 ; 
 int /*<<< orphan*/  RT5670_DMIC_CTRL2 ; 
#define  RT5670_DMIC_DATA_GPIO10 135 
#define  RT5670_DMIC_DATA_GPIO5 134 
#define  RT5670_DMIC_DATA_GPIO6 133 
#define  RT5670_DMIC_DATA_GPIO7 132 
#define  RT5670_DMIC_DATA_GPIO8 131 
#define  RT5670_DMIC_DATA_GPIO9 130 
#define  RT5670_DMIC_DATA_IN2P 129 
#define  RT5670_DMIC_DATA_IN3N 128 
 int RT5670_DMIC_EN ; 
 int /*<<< orphan*/  RT5670_GLB_CLK ; 
 int RT5670_GP1_PF_MASK ; 
 int RT5670_GP1_PF_OUT ; 
 int RT5670_GP1_PIN_IRQ ; 
 int RT5670_GP1_PIN_MASK ; 
 int RT5670_GP2_PIN_DMIC1_SCL ; 
 int RT5670_GP2_PIN_MASK ; 
 int RT5670_GP5_PIN_DMIC3_SDA ; 
 int RT5670_GP5_PIN_MASK ; 
 int RT5670_GP6_PIN_DMIC1_SDA ; 
 int RT5670_GP6_PIN_MASK ; 
 int RT5670_GP7_PIN_DMIC1_SDA ; 
 int RT5670_GP7_PIN_MASK ; 
 int RT5670_GP8_PIN_DMIC2_SDA ; 
 int RT5670_GP8_PIN_MASK ; 
 int /*<<< orphan*/  RT5670_GPIO_CTRL1 ; 
 int /*<<< orphan*/  RT5670_GPIO_CTRL2 ; 
 int /*<<< orphan*/  RT5670_GPIO_CTRL3 ; 
 int /*<<< orphan*/  RT5670_IL_CMD ; 
 int /*<<< orphan*/  RT5670_IL_CMD2 ; 
 int /*<<< orphan*/  RT5670_IL_CMD3 ; 
 int /*<<< orphan*/  RT5670_IN2 ; 
 int RT5670_IN2_DIFF ; 
 int RT5670_IN_DF2 ; 
 int /*<<< orphan*/  RT5670_IRQ_CTRL1 ; 
 int RT5670_JD1_1_EN ; 
 int RT5670_JD1_1_EN_MASK ; 
 int RT5670_JD1_MODE_0 ; 
 int RT5670_JD1_MODE_1 ; 
 int RT5670_JD1_MODE_2 ; 
 int RT5670_JD1_MODE_MASK ; 
 int RT5670_JD_CBJ_JD1_1 ; 
 int /*<<< orphan*/  RT5670_JD_CTRL3 ; 
 int RT5670_JD_HPO_JD1_1 ; 
 int RT5670_JD_MODE1 ; 
 int RT5670_JD_MODE2 ; 
 int RT5670_JD_MODE3 ; 
 int RT5670_JD_TRI_CBJ_SEL_MASK ; 
 int RT5670_JD_TRI_HPO_SEL_MASK ; 
 int RT5670_MCLK_DET ; 
 int /*<<< orphan*/  RT5670_PWR_ANLG1 ; 
 int /*<<< orphan*/  RT5670_PWR_ANLG2 ; 
 int RT5670_PWR_HP_L ; 
 int RT5670_PWR_HP_R ; 
 int RT5670_PWR_JD1 ; 
 int RT5670_PWR_MB ; 
 int RT5670_PWR_VREF2 ; 
 int /*<<< orphan*/  RT5670_RESET ; 
 int RT5670_SCLK_SRC_MASK ; 
 int RT5670_SCLK_SRC_RCCLK ; 
 int /*<<< orphan*/  RT5670_SCLK_S_RCCLK ; 
 int /*<<< orphan*/  RT5670_VENDOR_ID ; 
 int /*<<< orphan*/  RT5670_VENDOR_ID2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct rt5670_platform_data* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 struct rt5670_priv* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmi_platform_intel_quirks ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct rt5670_priv*) ; 
 int /*<<< orphan*/  init_list ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int quirk_override ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rt5670_dai ; 
 int rt5670_quirk ; 
 int /*<<< orphan*/  rt5670_regmap ; 
 int /*<<< orphan*/  soc_component_dev_rt5670 ; 

__attribute__((used)) static int FUNC21(struct i2c_client *i2c,
		    const struct i2c_device_id *id)
{
	struct rt5670_platform_data *pdata = FUNC4(&i2c->dev);
	struct rt5670_priv *rt5670;
	int ret;
	unsigned int val;

	rt5670 = FUNC7(&i2c->dev,
				sizeof(struct rt5670_priv),
				GFP_KERNEL);
	if (NULL == rt5670)
		return -ENOMEM;

	FUNC11(i2c, rt5670);

	if (pdata)
		rt5670->pdata = *pdata;

	FUNC10(dmi_platform_intel_quirks);
	if (quirk_override) {
		FUNC5(&i2c->dev, "Overriding quirk 0x%x => 0x%x\n",
			 (unsigned int)rt5670_quirk, quirk_override);
		rt5670_quirk = quirk_override;
	}

	if (rt5670_quirk & RT5670_DEV_GPIO) {
		rt5670->pdata.dev_gpio = true;
		FUNC5(&i2c->dev, "quirk dev_gpio\n");
	}
	if (rt5670_quirk & RT5670_IN2_DIFF) {
		rt5670->pdata.in2_diff = true;
		FUNC5(&i2c->dev, "quirk IN2_DIFF\n");
	}
	if (rt5670_quirk & RT5670_DMIC_EN) {
		rt5670->pdata.dmic_en = true;
		FUNC5(&i2c->dev, "quirk DMIC enabled\n");
	}
	if (rt5670_quirk & RT5670_DMIC1_IN2P) {
		rt5670->pdata.dmic1_data_pin = RT5670_DMIC_DATA_IN2P;
		FUNC5(&i2c->dev, "quirk DMIC1 on IN2P pin\n");
	}
	if (rt5670_quirk & RT5670_DMIC1_GPIO6) {
		rt5670->pdata.dmic1_data_pin = RT5670_DMIC_DATA_GPIO6;
		FUNC5(&i2c->dev, "quirk DMIC1 on GPIO6 pin\n");
	}
	if (rt5670_quirk & RT5670_DMIC1_GPIO7) {
		rt5670->pdata.dmic1_data_pin = RT5670_DMIC_DATA_GPIO7;
		FUNC5(&i2c->dev, "quirk DMIC1 on GPIO7 pin\n");
	}
	if (rt5670_quirk & RT5670_DMIC2_INR) {
		rt5670->pdata.dmic2_data_pin = RT5670_DMIC_DATA_IN3N;
		FUNC5(&i2c->dev, "quirk DMIC2 on INR pin\n");
	}
	if (rt5670_quirk & RT5670_DMIC2_GPIO8) {
		rt5670->pdata.dmic2_data_pin = RT5670_DMIC_DATA_GPIO8;
		FUNC5(&i2c->dev, "quirk DMIC2 on GPIO8 pin\n");
	}
	if (rt5670_quirk & RT5670_DMIC3_GPIO5) {
		rt5670->pdata.dmic3_data_pin = RT5670_DMIC_DATA_GPIO5;
		FUNC5(&i2c->dev, "quirk DMIC3 on GPIO5 pin\n");
	}

	if (rt5670_quirk & RT5670_JD_MODE1) {
		rt5670->pdata.jd_mode = 1;
		FUNC5(&i2c->dev, "quirk JD mode 1\n");
	}
	if (rt5670_quirk & RT5670_JD_MODE2) {
		rt5670->pdata.jd_mode = 2;
		FUNC5(&i2c->dev, "quirk JD mode 2\n");
	}
	if (rt5670_quirk & RT5670_JD_MODE3) {
		rt5670->pdata.jd_mode = 3;
		FUNC5(&i2c->dev, "quirk JD mode 3\n");
	}

	rt5670->regmap = FUNC8(i2c, &rt5670_regmap);
	if (FUNC1(rt5670->regmap)) {
		ret = FUNC2(rt5670->regmap);
		FUNC3(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	FUNC17(rt5670->regmap, RT5670_VENDOR_ID2, &val);
	if (val != RT5670_DEVICE_ID) {
		FUNC3(&i2c->dev,
			"Device with ID register %#x is not rt5670/72\n", val);
		return -ENODEV;
	}

	FUNC20(rt5670->regmap, RT5670_RESET, 0);
	FUNC19(rt5670->regmap, RT5670_PWR_ANLG1,
		RT5670_PWR_HP_L | RT5670_PWR_HP_R |
		RT5670_PWR_VREF2, RT5670_PWR_VREF2);
	FUNC12(100);

	FUNC20(rt5670->regmap, RT5670_RESET, 0);

	FUNC17(rt5670->regmap, RT5670_VENDOR_ID, &val);
	if (val >= 4)
		FUNC20(rt5670->regmap, RT5670_GPIO_CTRL3, 0x0980);
	else
		FUNC20(rt5670->regmap, RT5670_GPIO_CTRL3, 0x0d00);

	ret = FUNC18(rt5670->regmap, init_list,
				    FUNC0(init_list));
	if (ret != 0)
		FUNC6(&i2c->dev, "Failed to apply regmap patch: %d\n", ret);

	FUNC19(rt5670->regmap, RT5670_DIG_MISC,
				 RT5670_MCLK_DET, RT5670_MCLK_DET);

	if (rt5670->pdata.in2_diff)
		FUNC19(rt5670->regmap, RT5670_IN2,
					RT5670_IN_DF2, RT5670_IN_DF2);

	if (rt5670->pdata.dev_gpio) {
		/* for push button */
		FUNC20(rt5670->regmap, RT5670_IL_CMD, 0x0000);
		FUNC20(rt5670->regmap, RT5670_IL_CMD2, 0x0010);
		FUNC20(rt5670->regmap, RT5670_IL_CMD3, 0x0014);
		/* for irq */
		FUNC19(rt5670->regmap, RT5670_GPIO_CTRL1,
				   RT5670_GP1_PIN_MASK, RT5670_GP1_PIN_IRQ);
		FUNC19(rt5670->regmap, RT5670_GPIO_CTRL2,
				   RT5670_GP1_PF_MASK, RT5670_GP1_PF_OUT);
	}

	if (rt5670->pdata.jd_mode) {
		FUNC19(rt5670->regmap, RT5670_GLB_CLK,
				   RT5670_SCLK_SRC_MASK, RT5670_SCLK_SRC_RCCLK);
		rt5670->sysclk = 0;
		rt5670->sysclk_src = RT5670_SCLK_S_RCCLK;
		FUNC19(rt5670->regmap, RT5670_PWR_ANLG1,
				   RT5670_PWR_MB, RT5670_PWR_MB);
		FUNC19(rt5670->regmap, RT5670_PWR_ANLG2,
				   RT5670_PWR_JD1, RT5670_PWR_JD1);
		FUNC19(rt5670->regmap, RT5670_IRQ_CTRL1,
				   RT5670_JD1_1_EN_MASK, RT5670_JD1_1_EN);
		FUNC19(rt5670->regmap, RT5670_JD_CTRL3,
				   RT5670_JD_TRI_CBJ_SEL_MASK |
				   RT5670_JD_TRI_HPO_SEL_MASK,
				   RT5670_JD_CBJ_JD1_1 | RT5670_JD_HPO_JD1_1);
		switch (rt5670->pdata.jd_mode) {
		case 1:
			FUNC19(rt5670->regmap, RT5670_A_JD_CTRL1,
					   RT5670_JD1_MODE_MASK,
					   RT5670_JD1_MODE_0);
			break;
		case 2:
			FUNC19(rt5670->regmap, RT5670_A_JD_CTRL1,
					   RT5670_JD1_MODE_MASK,
					   RT5670_JD1_MODE_1);
			break;
		case 3:
			FUNC19(rt5670->regmap, RT5670_A_JD_CTRL1,
					   RT5670_JD1_MODE_MASK,
					   RT5670_JD1_MODE_2);
			break;
		default:
			break;
		}
	}

	if (rt5670->pdata.dmic_en) {
		FUNC19(rt5670->regmap, RT5670_GPIO_CTRL1,
				   RT5670_GP2_PIN_MASK,
				   RT5670_GP2_PIN_DMIC1_SCL);

		switch (rt5670->pdata.dmic1_data_pin) {
		case RT5670_DMIC_DATA_IN2P:
			FUNC19(rt5670->regmap, RT5670_DMIC_CTRL1,
					   RT5670_DMIC_1_DP_MASK,
					   RT5670_DMIC_1_DP_IN2P);
			break;

		case RT5670_DMIC_DATA_GPIO6:
			FUNC19(rt5670->regmap, RT5670_DMIC_CTRL1,
					   RT5670_DMIC_1_DP_MASK,
					   RT5670_DMIC_1_DP_GPIO6);
			FUNC19(rt5670->regmap, RT5670_GPIO_CTRL1,
					   RT5670_GP6_PIN_MASK,
					   RT5670_GP6_PIN_DMIC1_SDA);
			break;

		case RT5670_DMIC_DATA_GPIO7:
			FUNC19(rt5670->regmap, RT5670_DMIC_CTRL1,
					   RT5670_DMIC_1_DP_MASK,
					   RT5670_DMIC_1_DP_GPIO7);
			FUNC19(rt5670->regmap, RT5670_GPIO_CTRL1,
					   RT5670_GP7_PIN_MASK,
					   RT5670_GP7_PIN_DMIC1_SDA);
			break;

		default:
			break;
		}

		switch (rt5670->pdata.dmic2_data_pin) {
		case RT5670_DMIC_DATA_IN3N:
			FUNC19(rt5670->regmap, RT5670_DMIC_CTRL1,
					   RT5670_DMIC_2_DP_MASK,
					   RT5670_DMIC_2_DP_IN3N);
			break;

		case RT5670_DMIC_DATA_GPIO8:
			FUNC19(rt5670->regmap, RT5670_DMIC_CTRL1,
					   RT5670_DMIC_2_DP_MASK,
					   RT5670_DMIC_2_DP_GPIO8);
			FUNC19(rt5670->regmap, RT5670_GPIO_CTRL1,
					   RT5670_GP8_PIN_MASK,
					   RT5670_GP8_PIN_DMIC2_SDA);
			break;

		default:
			break;
		}

		switch (rt5670->pdata.dmic3_data_pin) {
		case RT5670_DMIC_DATA_GPIO5:
			FUNC19(rt5670->regmap, RT5670_DMIC_CTRL2,
					   RT5670_DMIC_3_DP_MASK,
					   RT5670_DMIC_3_DP_GPIO5);
			FUNC19(rt5670->regmap, RT5670_GPIO_CTRL1,
					   RT5670_GP5_PIN_MASK,
					   RT5670_GP5_PIN_DMIC3_SDA);
			break;

		case RT5670_DMIC_DATA_GPIO9:
		case RT5670_DMIC_DATA_GPIO10:
			FUNC3(&i2c->dev,
				"Always use GPIO5 as DMIC3 data pin\n");
			break;

		default:
			break;
		}

	}

	FUNC15(&i2c->dev);
	FUNC13(&i2c->dev);

	ret = FUNC9(&i2c->dev,
			&soc_component_dev_rt5670,
			rt5670_dai, FUNC0(rt5670_dai));
	if (ret < 0)
		goto err;

	FUNC16(&i2c->dev);

	return 0;
err:
	FUNC14(&i2c->dev);

	return ret;
}