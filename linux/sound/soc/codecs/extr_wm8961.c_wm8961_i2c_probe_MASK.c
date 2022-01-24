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
struct wm8961_priv {int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int WM8961_CHIP_REV_MASK ; 
 unsigned int WM8961_CHIP_REV_SHIFT ; 
 unsigned int WM8961_DEVICE_ID_MASK ; 
 unsigned int WM8961_DEVICE_ID_SHIFT ; 
 int /*<<< orphan*/  WM8961_RIGHT_INPUT_VOLUME ; 
 int /*<<< orphan*/  WM8961_SOFTWARE_RESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 struct wm8961_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct wm8961_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  soc_component_dev_wm8961 ; 
 int /*<<< orphan*/  wm8961_dai ; 
 int /*<<< orphan*/  wm8961_regmap ; 

__attribute__((used)) static int FUNC11(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct wm8961_priv *wm8961;
	unsigned int val;
	int ret;

	wm8961 = FUNC4(&i2c->dev, sizeof(struct wm8961_priv),
			      GFP_KERNEL);
	if (wm8961 == NULL)
		return -ENOMEM;

	wm8961->regmap = FUNC5(i2c, &wm8961_regmap);
	if (FUNC0(wm8961->regmap))
		return FUNC1(wm8961->regmap);

	ret = FUNC9(wm8961->regmap, WM8961_SOFTWARE_RESET, &val);
	if (ret != 0) {
		FUNC2(&i2c->dev, "Failed to read chip ID: %d\n", ret);
		return ret;
	}

	if (val != 0x1801) {
		FUNC2(&i2c->dev, "Device is not a WM8961: ID=0x%x\n", val);
		return -EINVAL;
	}

	/* This isn't volatile - readback doesn't correspond to write */
	FUNC8(wm8961->regmap, true);
	ret = FUNC9(wm8961->regmap, WM8961_RIGHT_INPUT_VOLUME, &val);
	FUNC8(wm8961->regmap, false);

	if (ret != 0) {
		FUNC2(&i2c->dev, "Failed to read chip revision: %d\n", ret);
		return ret;
	}

	FUNC3(&i2c->dev, "WM8961 family %d revision %c\n",
		 (val & WM8961_DEVICE_ID_MASK) >> WM8961_DEVICE_ID_SHIFT,
		 ((val & WM8961_CHIP_REV_MASK) >> WM8961_CHIP_REV_SHIFT)
		 + 'A');

	ret = FUNC10(wm8961->regmap, WM8961_SOFTWARE_RESET, 0x1801);
	if (ret != 0) {
		FUNC2(&i2c->dev, "Failed to issue reset: %d\n", ret);
		return ret;
	}

	FUNC7(i2c, wm8961);

	ret = FUNC6(&i2c->dev,
			&soc_component_dev_wm8961, &wm8961_dai, 1);

	return ret;
}