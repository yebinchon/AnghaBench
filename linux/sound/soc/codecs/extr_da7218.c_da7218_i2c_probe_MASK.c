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
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  irq; } ;
struct da7218_priv {scalar_t__ dev_id; int /*<<< orphan*/  regmap; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ DA7217_DEV_ID ; 
 scalar_t__ DA7218_DEV_ID ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  da7218_dai ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  da7218_regmap_config ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 struct da7218_priv* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct da7218_priv*) ; 
 int /*<<< orphan*/  soc_component_dev_da7218 ; 

__attribute__((used)) static int FUNC8(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct da7218_priv *da7218;
	int ret;

	da7218 = FUNC4(&i2c->dev, sizeof(*da7218), GFP_KERNEL);
	if (!da7218)
		return -ENOMEM;

	FUNC7(i2c, da7218);

	if (i2c->dev.of_node)
		da7218->dev_id = FUNC2(&i2c->dev);
	else
		da7218->dev_id = id->driver_data;

	if ((da7218->dev_id != DA7217_DEV_ID) &&
	    (da7218->dev_id != DA7218_DEV_ID)) {
		FUNC3(&i2c->dev, "Invalid device Id\n");
		return -EINVAL;
	}

	da7218->irq = i2c->irq;

	da7218->regmap = FUNC5(i2c, &da7218_regmap_config);
	if (FUNC0(da7218->regmap)) {
		ret = FUNC1(da7218->regmap);
		FUNC3(&i2c->dev, "regmap_init() failed: %d\n", ret);
		return ret;
	}

	ret = FUNC6(&i2c->dev,
			&soc_component_dev_da7218, &da7218_dai, 1);
	if (ret < 0) {
		FUNC3(&i2c->dev, "Failed to register da7218 component: %d\n",
			ret);
	}
	return ret;
}