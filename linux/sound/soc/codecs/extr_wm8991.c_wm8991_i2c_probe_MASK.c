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
struct wm8991_priv {int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int WM8991_ALRCGPIO1 ; 
 int /*<<< orphan*/  WM8991_AUDIO_INTERFACE_4 ; 
 int /*<<< orphan*/  WM8991_DAC_CTRL ; 
 int /*<<< orphan*/  WM8991_GPIO1_GPIO2 ; 
 int WM8991_GPIO1_SEL_MASK ; 
 int /*<<< orphan*/  WM8991_LEFT_OUTPUT_VOLUME ; 
 int WM8991_OPCLK_ENA ; 
 int /*<<< orphan*/  WM8991_POWER_MANAGEMENT_1 ; 
 int /*<<< orphan*/  WM8991_POWER_MANAGEMENT_2 ; 
 int /*<<< orphan*/  WM8991_RESET ; 
 int /*<<< orphan*/  WM8991_RIGHT_OUTPUT_VOLUME ; 
 int WM8991_VMID_MODE_MASK ; 
 int WM8991_VREF_ENA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct wm8991_priv* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct wm8991_priv*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  soc_component_dev_wm8991 ; 
 int /*<<< orphan*/  wm8991_dai ; 
 int /*<<< orphan*/  wm8991_regmap ; 

__attribute__((used)) static int FUNC10(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct wm8991_priv *wm8991;
	unsigned int val;
	int ret;

	wm8991 = FUNC3(&i2c->dev, sizeof(*wm8991), GFP_KERNEL);
	if (!wm8991)
		return -ENOMEM;

	wm8991->regmap = FUNC4(i2c, &wm8991_regmap);
	if (FUNC0(wm8991->regmap))
		return FUNC1(wm8991->regmap);

	FUNC6(i2c, wm8991);

	ret = FUNC7(wm8991->regmap, WM8991_RESET, &val);
	if (ret != 0) {
		FUNC2(&i2c->dev, "Failed to read device ID: %d\n", ret);
		return ret;
	}
	if (val != 0x8991) {
		FUNC2(&i2c->dev, "Device with ID %x is not a WM8991\n", val);
		return -EINVAL;
	}

	ret = FUNC9(wm8991->regmap, WM8991_RESET, 0);
	if (ret < 0) {
		FUNC2(&i2c->dev, "Failed to issue reset: %d\n", ret);
		return ret;
	}

	FUNC8(wm8991->regmap, WM8991_AUDIO_INTERFACE_4,
			   WM8991_ALRCGPIO1, WM8991_ALRCGPIO1);

	FUNC8(wm8991->regmap, WM8991_GPIO1_GPIO2,
			   WM8991_GPIO1_SEL_MASK, 1);

	FUNC8(wm8991->regmap, WM8991_POWER_MANAGEMENT_1,
			   WM8991_VREF_ENA | WM8991_VMID_MODE_MASK,
			   WM8991_VREF_ENA | WM8991_VMID_MODE_MASK);

	FUNC8(wm8991->regmap, WM8991_POWER_MANAGEMENT_2,
			   WM8991_OPCLK_ENA, WM8991_OPCLK_ENA);

	FUNC9(wm8991->regmap, WM8991_DAC_CTRL, 0);
	FUNC9(wm8991->regmap, WM8991_LEFT_OUTPUT_VOLUME,
		     0x50 | (1<<8));
	FUNC9(wm8991->regmap, WM8991_RIGHT_OUTPUT_VOLUME,
		     0x50 | (1<<8));

	ret = FUNC5(&i2c->dev,
				     &soc_component_dev_wm8991, &wm8991_dai, 1);

	return ret;
}