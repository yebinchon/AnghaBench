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
struct da7213_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  da7213_dai ; 
 int /*<<< orphan*/  da7213_regmap_config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct da7213_priv* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct da7213_priv*) ; 
 int /*<<< orphan*/  soc_component_dev_da7213 ; 

__attribute__((used)) static int FUNC7(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct da7213_priv *da7213;
	int ret;

	da7213 = FUNC3(&i2c->dev, sizeof(*da7213), GFP_KERNEL);
	if (!da7213)
		return -ENOMEM;

	FUNC6(i2c, da7213);

	da7213->regmap = FUNC4(i2c, &da7213_regmap_config);
	if (FUNC0(da7213->regmap)) {
		ret = FUNC1(da7213->regmap);
		FUNC2(&i2c->dev, "regmap_init() failed: %d\n", ret);
		return ret;
	}

	ret = FUNC5(&i2c->dev,
			&soc_component_dev_da7213, &da7213_dai, 1);
	if (ret < 0) {
		FUNC2(&i2c->dev, "Failed to register da7213 component: %d\n",
			ret);
	}
	return ret;
}