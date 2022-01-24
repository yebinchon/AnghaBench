#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wm8523_priv {TYPE_1__* supplies; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int WM8523_CHIP_REV_MASK ; 
 int /*<<< orphan*/  WM8523_DEVICE_ID ; 
 int /*<<< orphan*/  WM8523_REVISION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 struct wm8523_priv* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct wm8523_priv*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int,TYPE_1__*) ; 
 int FUNC13 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  soc_component_dev_wm8523 ; 
 int /*<<< orphan*/  wm8523_dai ; 
 int /*<<< orphan*/  wm8523_regmap ; 
 int /*<<< orphan*/ * wm8523_supply_names ; 

__attribute__((used)) static int FUNC14(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct wm8523_priv *wm8523;
	unsigned int val;
	int ret, i;

	wm8523 = FUNC5(&i2c->dev, sizeof(struct wm8523_priv),
			      GFP_KERNEL);
	if (wm8523 == NULL)
		return -ENOMEM;

	wm8523->regmap = FUNC6(i2c, &wm8523_regmap);
	if (FUNC1(wm8523->regmap)) {
		ret = FUNC2(wm8523->regmap);
		FUNC3(&i2c->dev, "Failed to create regmap: %d\n", ret);
		return ret;
	}

	for (i = 0; i < FUNC0(wm8523->supplies); i++)
		wm8523->supplies[i].supply = wm8523_supply_names[i];

	ret = FUNC7(&i2c->dev, FUNC0(wm8523->supplies),
				      wm8523->supplies);
	if (ret != 0) {
		FUNC3(&i2c->dev, "Failed to request supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC13(FUNC0(wm8523->supplies),
				    wm8523->supplies);
	if (ret != 0) {
		FUNC3(&i2c->dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC10(wm8523->regmap, WM8523_DEVICE_ID, &val);
	if (ret < 0) {
		FUNC3(&i2c->dev, "Failed to read ID register\n");
		goto err_enable;
	}
	if (val != 0x8523) {
		FUNC3(&i2c->dev, "Device is not a WM8523, ID is %x\n", ret);
		ret = -EINVAL;
		goto err_enable;
	}

	ret = FUNC10(wm8523->regmap, WM8523_REVISION, &val);
	if (ret < 0) {
		FUNC3(&i2c->dev, "Failed to read revision register\n");
		goto err_enable;
	}
	FUNC4(&i2c->dev, "revision %c\n",
		 (val & WM8523_CHIP_REV_MASK) + 'A');

	ret = FUNC11(wm8523->regmap, WM8523_DEVICE_ID, 0x8523);
	if (ret != 0) {
		FUNC3(&i2c->dev, "Failed to reset device: %d\n", ret);
		goto err_enable;
	}

	FUNC12(FUNC0(wm8523->supplies), wm8523->supplies);

	FUNC9(i2c, wm8523);

	ret = FUNC8(&i2c->dev,
			&soc_component_dev_wm8523, &wm8523_dai, 1);

	return ret;

err_enable:
	FUNC12(FUNC0(wm8523->supplies), wm8523->supplies);
	return ret;
}