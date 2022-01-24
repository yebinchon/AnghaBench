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
struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct regmap* FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct regmap*) ; 
 int /*<<< orphan*/  isabelle_dai ; 
 int /*<<< orphan*/  isabelle_regmap_config ; 
 int /*<<< orphan*/  soc_component_dev_isabelle ; 

__attribute__((used)) static int FUNC7(struct i2c_client *i2c,
			      const struct i2c_device_id *id)
{
	struct regmap *isabelle_regmap;
	int ret = 0;

	isabelle_regmap = FUNC4(i2c, &isabelle_regmap_config);
	if (FUNC1(isabelle_regmap)) {
		ret = FUNC2(isabelle_regmap);
		FUNC3(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}
	FUNC6(i2c, isabelle_regmap);

	ret = FUNC5(&i2c->dev,
				&soc_component_dev_isabelle, isabelle_dai,
				FUNC0(isabelle_dai));
	if (ret < 0) {
		FUNC3(&i2c->dev, "Failed to register component: %d\n", ret);
		return ret;
	}

	return ret;
}