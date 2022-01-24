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
struct wm8978_priv {int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM8978_RESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct wm8978_priv* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct wm8978_priv*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_component_dev_wm8978 ; 
 int /*<<< orphan*/  wm8978_dai ; 
 int /*<<< orphan*/  wm8978_regmap_config ; 

__attribute__((used)) static int FUNC8(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct wm8978_priv *wm8978;
	int ret;

	wm8978 = FUNC3(&i2c->dev, sizeof(struct wm8978_priv),
			      GFP_KERNEL);
	if (wm8978 == NULL)
		return -ENOMEM;

	wm8978->regmap = FUNC4(i2c, &wm8978_regmap_config);
	if (FUNC0(wm8978->regmap)) {
		ret = FUNC1(wm8978->regmap);
		FUNC2(&i2c->dev, "Failed to allocate regmap: %d\n", ret);
		return ret;
	}

	FUNC6(i2c, wm8978);

	/* Reset the codec */
	ret = FUNC7(wm8978->regmap, WM8978_RESET, 0);
	if (ret != 0) {
		FUNC2(&i2c->dev, "Failed to issue reset: %d\n", ret);
		return ret;
	}

	ret = FUNC5(&i2c->dev,
			&soc_component_dev_wm8978, &wm8978_dai, 1);
	if (ret != 0) {
		FUNC2(&i2c->dev, "Failed to register CODEC: %d\n", ret);
		return ret;
	}

	return 0;
}