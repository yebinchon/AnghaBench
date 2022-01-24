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
struct da732x_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int DA732X_ID_MAJOR_MASK ; 
 unsigned int DA732X_ID_MINOR_MASK ; 
 int /*<<< orphan*/  DA732X_REG_ID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  da732x_dai ; 
 int /*<<< orphan*/  da732x_regmap ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 struct da732x_priv* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct da732x_priv*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  soc_component_dev_da732x ; 

__attribute__((used)) static int FUNC10(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct da732x_priv *da732x;
	unsigned int reg;
	int ret;

	da732x = FUNC5(&i2c->dev, sizeof(struct da732x_priv),
			      GFP_KERNEL);
	if (!da732x)
		return -ENOMEM;

	FUNC8(i2c, da732x);

	da732x->regmap = FUNC6(i2c, &da732x_regmap);
	if (FUNC1(da732x->regmap)) {
		ret = FUNC2(da732x->regmap);
		FUNC3(&i2c->dev, "Failed to initialize regmap\n");
		goto err;
	}

	ret = FUNC9(da732x->regmap, DA732X_REG_ID, &reg);
	if (ret < 0) {
		FUNC3(&i2c->dev, "Failed to read ID register: %d\n", ret);
		goto err;
	}

	FUNC4(&i2c->dev, "Revision: %d.%d\n",
		 (reg & DA732X_ID_MAJOR_MASK) >> 4,
		 (reg & DA732X_ID_MINOR_MASK));

	ret = FUNC7(&i2c->dev,
				     &soc_component_dev_da732x,
				     da732x_dai, FUNC0(da732x_dai));
	if (ret != 0)
		FUNC3(&i2c->dev, "Failed to register component.\n");

err:
	return ret;
}