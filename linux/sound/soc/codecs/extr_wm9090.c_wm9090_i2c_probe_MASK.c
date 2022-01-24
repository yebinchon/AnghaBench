#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wm9090_priv {int /*<<< orphan*/  pdata; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM9090_SOFTWARE_RESET ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 struct wm9090_priv* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct wm9090_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_component_dev_wm9090 ; 
 int /*<<< orphan*/  wm9090_regmap ; 

__attribute__((used)) static int FUNC10(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct wm9090_priv *wm9090;
	unsigned int reg;
	int ret;

	wm9090 = FUNC3(&i2c->dev, sizeof(*wm9090), GFP_KERNEL);
	if (!wm9090)
		return -ENOMEM;

	wm9090->regmap = FUNC4(i2c, &wm9090_regmap);
	if (FUNC0(wm9090->regmap)) {
		ret = FUNC1(wm9090->regmap);
		FUNC2(&i2c->dev, "Failed to allocate regmap: %d\n", ret);
		return ret;
	}

	ret = FUNC8(wm9090->regmap, WM9090_SOFTWARE_RESET, &reg);
	if (ret < 0)
		return ret;

	if (reg != 0x9093) {
		FUNC2(&i2c->dev, "Device is not a WM9090, ID=%x\n", reg);
		return -ENODEV;
	}

	ret = FUNC9(wm9090->regmap, WM9090_SOFTWARE_RESET, 0);
	if (ret < 0)
		return ret;

	if (i2c->dev.platform_data)
		FUNC7(&wm9090->pdata, i2c->dev.platform_data,
		       sizeof(wm9090->pdata));

	FUNC6(i2c, wm9090);

	ret =  FUNC5(&i2c->dev,
			&soc_component_dev_wm9090,  NULL, 0);
	if (ret != 0) {
		FUNC2(&i2c->dev, "Failed to register CODEC: %d\n", ret);
		return ret;
	}

	return 0;
}