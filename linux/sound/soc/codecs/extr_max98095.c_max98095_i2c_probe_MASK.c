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
struct max98095_priv {int /*<<< orphan*/  pdata; int /*<<< orphan*/  devtype; int /*<<< orphan*/  regmap; int /*<<< orphan*/  lock; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 struct max98095_priv* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct max98095_priv*) ; 
 int /*<<< orphan*/  max98095_dai ; 
 int /*<<< orphan*/  max98095_regmap ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  soc_component_dev_max98095 ; 

__attribute__((used)) static int FUNC9(struct i2c_client *i2c,
			     const struct i2c_device_id *id)
{
	struct max98095_priv *max98095;
	int ret;

	max98095 = FUNC4(&i2c->dev, sizeof(struct max98095_priv),
				GFP_KERNEL);
	if (max98095 == NULL)
		return -ENOMEM;

	FUNC8(&max98095->lock);

	max98095->regmap = FUNC5(i2c, &max98095_regmap);
	if (FUNC1(max98095->regmap)) {
		ret = FUNC2(max98095->regmap);
		FUNC3(&i2c->dev, "Failed to allocate regmap: %d\n", ret);
		return ret;
	}

	max98095->devtype = id->driver_data;
	FUNC7(i2c, max98095);
	max98095->pdata = i2c->dev.platform_data;

	ret = FUNC6(&i2c->dev,
				     &soc_component_dev_max98095,
				     max98095_dai, FUNC0(max98095_dai));
	return ret;
}