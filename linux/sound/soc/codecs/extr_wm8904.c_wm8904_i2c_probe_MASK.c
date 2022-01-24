#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct wm8904_priv {int devtype; TYPE_2__* supplies; int /*<<< orphan*/  regmap; TYPE_1__* pdata; int /*<<< orphan*/  mclk; } ;
struct of_device_id {scalar_t__ data; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_14__ {TYPE_1__* platform_data; scalar_t__ of_node; } ;
struct i2c_client {TYPE_4__ dev; } ;
typedef  enum wm8904_type { ____Placeholder_wm8904_type } wm8904_type ;
struct TYPE_13__ {int /*<<< orphan*/  supply; } ;
struct TYPE_12__ {int* gpio_cfg; int* mic_cfg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ WM8904_ADC_DIGITAL_VOLUME_LEFT ; 
 scalar_t__ WM8904_ADC_DIGITAL_VOLUME_RIGHT ; 
 int WM8904_ADC_VU ; 
 scalar_t__ WM8904_ANALOGUE_OUT1_LEFT ; 
 scalar_t__ WM8904_ANALOGUE_OUT1_RIGHT ; 
 scalar_t__ WM8904_ANALOGUE_OUT2_LEFT ; 
 scalar_t__ WM8904_ANALOGUE_OUT2_RIGHT ; 
 scalar_t__ WM8904_BIAS_CONTROL_0 ; 
 scalar_t__ WM8904_CLASS_W_0 ; 
 scalar_t__ WM8904_CLOCK_RATES_0 ; 
 int WM8904_CP_DYN_PWR ; 
 scalar_t__ WM8904_DAC_DIGITAL_VOLUME_LEFT ; 
 scalar_t__ WM8904_DAC_DIGITAL_VOLUME_RIGHT ; 
 int WM8904_DAC_VU ; 
 scalar_t__ WM8904_GPIO_CONTROL_1 ; 
 int WM8904_GPIO_REGS ; 
 int WM8904_HPOUTLZC ; 
 int WM8904_HPOUTRZC ; 
 int WM8904_HPOUT_VU ; 
 int WM8904_LINEOUTLZC ; 
 int WM8904_LINEOUTRZC ; 
 int WM8904_LINEOUT_VU ; 
 scalar_t__ WM8904_MIC_BIAS_CONTROL_0 ; 
 int WM8904_MIC_REGS ; 
 int WM8904_POBCTRL ; 
 int /*<<< orphan*/  WM8904_REVISION ; 
 int WM8904_SR_MODE ; 
 int /*<<< orphan*/  WM8904_SW_RESET_AND_ID ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*) ; 
 struct wm8904_priv* FUNC6 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_4__*,int,TYPE_2__*) ; 
 int FUNC9 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct wm8904_priv*) ; 
 struct of_device_id* FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,TYPE_2__*) ; 
 int FUNC17 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  soc_component_dev_wm8904 ; 
 int /*<<< orphan*/  wm8904_dai ; 
 int /*<<< orphan*/  wm8904_of_match ; 
 int /*<<< orphan*/  wm8904_regmap ; 
 int /*<<< orphan*/ * wm8904_supply_names ; 

__attribute__((used)) static int FUNC18(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct wm8904_priv *wm8904;
	unsigned int val;
	int ret, i;

	wm8904 = FUNC6(&i2c->dev, sizeof(struct wm8904_priv),
			      GFP_KERNEL);
	if (wm8904 == NULL)
		return -ENOMEM;

	wm8904->mclk = FUNC5(&i2c->dev, "mclk");
	if (FUNC1(wm8904->mclk)) {
		ret = FUNC2(wm8904->mclk);
		FUNC3(&i2c->dev, "Failed to get MCLK\n");
		return ret;
	}

	wm8904->regmap = FUNC7(i2c, &wm8904_regmap);
	if (FUNC1(wm8904->regmap)) {
		ret = FUNC2(wm8904->regmap);
		FUNC3(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	if (i2c->dev.of_node) {
		const struct of_device_id *match;

		match = FUNC11(wm8904_of_match, i2c->dev.of_node);
		if (match == NULL)
			return -EINVAL;
		wm8904->devtype = (enum wm8904_type)match->data;
	} else {
		wm8904->devtype = id->driver_data;
	}

	FUNC10(i2c, wm8904);
	wm8904->pdata = i2c->dev.platform_data;

	for (i = 0; i < FUNC0(wm8904->supplies); i++)
		wm8904->supplies[i].supply = wm8904_supply_names[i];

	ret = FUNC8(&i2c->dev, FUNC0(wm8904->supplies),
				      wm8904->supplies);
	if (ret != 0) {
		FUNC3(&i2c->dev, "Failed to request supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC17(FUNC0(wm8904->supplies),
				    wm8904->supplies);
	if (ret != 0) {
		FUNC3(&i2c->dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC13(wm8904->regmap, WM8904_SW_RESET_AND_ID, &val);
	if (ret < 0) {
		FUNC3(&i2c->dev, "Failed to read ID register: %d\n", ret);
		goto err_enable;
	}
	if (val != 0x8904) {
		FUNC3(&i2c->dev, "Device is not a WM8904, ID is %x\n", val);
		ret = -EINVAL;
		goto err_enable;
	}

	ret = FUNC13(wm8904->regmap, WM8904_REVISION, &val);
	if (ret < 0) {
		FUNC3(&i2c->dev, "Failed to read device revision: %d\n",
			ret);
		goto err_enable;
	}
	FUNC4(&i2c->dev, "revision %c\n", val + 'A');

	ret = FUNC15(wm8904->regmap, WM8904_SW_RESET_AND_ID, 0);
	if (ret < 0) {
		FUNC3(&i2c->dev, "Failed to issue reset: %d\n", ret);
		goto err_enable;
	}

	/* Change some default settings - latch VU and enable ZC */
	FUNC14(wm8904->regmap, WM8904_ADC_DIGITAL_VOLUME_LEFT,
			   WM8904_ADC_VU, WM8904_ADC_VU);
	FUNC14(wm8904->regmap, WM8904_ADC_DIGITAL_VOLUME_RIGHT,
			   WM8904_ADC_VU, WM8904_ADC_VU);
	FUNC14(wm8904->regmap, WM8904_DAC_DIGITAL_VOLUME_LEFT,
			   WM8904_DAC_VU, WM8904_DAC_VU);
	FUNC14(wm8904->regmap, WM8904_DAC_DIGITAL_VOLUME_RIGHT,
			   WM8904_DAC_VU, WM8904_DAC_VU);
	FUNC14(wm8904->regmap, WM8904_ANALOGUE_OUT1_LEFT,
			   WM8904_HPOUT_VU | WM8904_HPOUTLZC,
			   WM8904_HPOUT_VU | WM8904_HPOUTLZC);
	FUNC14(wm8904->regmap, WM8904_ANALOGUE_OUT1_RIGHT,
			   WM8904_HPOUT_VU | WM8904_HPOUTRZC,
			   WM8904_HPOUT_VU | WM8904_HPOUTRZC);
	FUNC14(wm8904->regmap, WM8904_ANALOGUE_OUT2_LEFT,
			   WM8904_LINEOUT_VU | WM8904_LINEOUTLZC,
			   WM8904_LINEOUT_VU | WM8904_LINEOUTLZC);
	FUNC14(wm8904->regmap, WM8904_ANALOGUE_OUT2_RIGHT,
			   WM8904_LINEOUT_VU | WM8904_LINEOUTRZC,
			   WM8904_LINEOUT_VU | WM8904_LINEOUTRZC);
	FUNC14(wm8904->regmap, WM8904_CLOCK_RATES_0,
			   WM8904_SR_MODE, 0);

	/* Apply configuration from the platform data. */
	if (wm8904->pdata) {
		for (i = 0; i < WM8904_GPIO_REGS; i++) {
			if (!wm8904->pdata->gpio_cfg[i])
				continue;

			FUNC14(wm8904->regmap,
					   WM8904_GPIO_CONTROL_1 + i,
					   0xffff,
					   wm8904->pdata->gpio_cfg[i]);
		}

		/* Zero is the default value for these anyway */
		for (i = 0; i < WM8904_MIC_REGS; i++)
			FUNC14(wm8904->regmap,
					   WM8904_MIC_BIAS_CONTROL_0 + i,
					   0xffff,
					   wm8904->pdata->mic_cfg[i]);
	}

	/* Set Class W by default - this will be managed by the Class
	 * G widget at runtime where bypass paths are available.
	 */
	FUNC14(wm8904->regmap, WM8904_CLASS_W_0,
			    WM8904_CP_DYN_PWR, WM8904_CP_DYN_PWR);

	/* Use normal bias source */
	FUNC14(wm8904->regmap, WM8904_BIAS_CONTROL_0,
			    WM8904_POBCTRL, 0);

	/* Can leave the device powered off until we need it */
	FUNC12(wm8904->regmap, true);
	FUNC16(FUNC0(wm8904->supplies), wm8904->supplies);

	ret = FUNC9(&i2c->dev,
			&soc_component_dev_wm8904, &wm8904_dai, 1);
	if (ret != 0)
		return ret;

	return 0;

err_enable:
	FUNC16(FUNC0(wm8904->supplies), wm8904->supplies);
	return ret;
}