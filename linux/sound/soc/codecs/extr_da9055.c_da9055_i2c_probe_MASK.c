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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct da9055_priv {int /*<<< orphan*/  regmap; struct da9055_platform_data* pdata; } ;
struct da9055_platform_data {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  da9055_dai ; 
 int /*<<< orphan*/  da9055_regmap_config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct da9055_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 struct da9055_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct da9055_priv*) ; 
 int /*<<< orphan*/  soc_component_dev_da9055 ; 

__attribute__((used)) static int FUNC8(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct da9055_priv *da9055;
	struct da9055_platform_data *pdata = FUNC3(&i2c->dev);
	int ret;

	da9055 = FUNC4(&i2c->dev, sizeof(struct da9055_priv),
			      GFP_KERNEL);
	if (!da9055)
		return -ENOMEM;

	if (pdata)
		da9055->pdata = pdata;

	FUNC7(i2c, da9055);

	da9055->regmap = FUNC5(i2c, &da9055_regmap_config);
	if (FUNC0(da9055->regmap)) {
		ret = FUNC1(da9055->regmap);
		FUNC2(&i2c->dev, "regmap_init() failed: %d\n", ret);
		return ret;
	}

	ret = FUNC6(&i2c->dev,
			&soc_component_dev_da9055, &da9055_dai, 1);
	if (ret < 0) {
		FUNC2(&i2c->dev, "Failed to register da9055 component: %d\n",
			ret);
	}
	return ret;
}