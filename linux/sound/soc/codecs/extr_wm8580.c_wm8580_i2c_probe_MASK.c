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
struct wm8580_priv {int /*<<< orphan*/  drvdata; TYPE_1__* supplies; int /*<<< orphan*/  regmap; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct wm8580_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct wm8580_priv*) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  soc_component_dev_wm8580 ; 
 TYPE_1__* wm8580_dai ; 
 int /*<<< orphan*/  wm8580_of_match ; 
 int /*<<< orphan*/  wm8580_regmap ; 
 int /*<<< orphan*/ * wm8580_supply_names ; 

__attribute__((used)) static int FUNC10(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	const struct of_device_id *of_id;
	struct wm8580_priv *wm8580;
	int ret, i;

	wm8580 = FUNC4(&i2c->dev, sizeof(struct wm8580_priv),
			      GFP_KERNEL);
	if (wm8580 == NULL)
		return -ENOMEM;

	wm8580->regmap = FUNC5(i2c, &wm8580_regmap);
	if (FUNC1(wm8580->regmap))
		return FUNC2(wm8580->regmap);

	for (i = 0; i < FUNC0(wm8580->supplies); i++)
		wm8580->supplies[i].supply = wm8580_supply_names[i];

	ret = FUNC6(&i2c->dev, FUNC0(wm8580->supplies),
				      wm8580->supplies);
	if (ret != 0) {
		FUNC3(&i2c->dev, "Failed to request supplies: %d\n", ret);
		return ret;
	}

	FUNC8(i2c, wm8580);

	of_id = FUNC9(wm8580_of_match, &i2c->dev);
	if (of_id)
		wm8580->drvdata = of_id->data;

	if (!wm8580->drvdata) {
		FUNC3(&i2c->dev, "failed to find driver data\n");
		return -EINVAL;
	}

	ret = FUNC7(&i2c->dev,
			&soc_component_dev_wm8580, wm8580_dai, FUNC0(wm8580_dai));

	return ret;
}