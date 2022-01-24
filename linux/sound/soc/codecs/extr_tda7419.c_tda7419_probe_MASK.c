#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tda7419_data {int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  def; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct tda7419_data* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct tda7419_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tda7419_component_driver ; 
 int /*<<< orphan*/  tda7419_regmap_config ; 
 TYPE_1__* tda7419_regmap_defaults ; 

__attribute__((used)) static int FUNC9(struct i2c_client *i2c,
			 const struct i2c_device_id *id)
{
	struct tda7419_data *tda7419;
	int i, ret;

	tda7419 = FUNC4(&i2c->dev,
			       sizeof(struct tda7419_data),
			       GFP_KERNEL);
	if (tda7419 == NULL)
		return -ENOMEM;

	FUNC7(i2c, tda7419);

	tda7419->regmap = FUNC5(i2c, &tda7419_regmap_config);
	if (FUNC1(tda7419->regmap)) {
		ret = FUNC2(tda7419->regmap);
		FUNC3(&i2c->dev, "error initializing regmap: %d\n",
				ret);
		return ret;
	}

	/*
	 * Reset registers to power-on defaults. The part does not provide a
	 * soft-reset function and the registers are not readable. This ensures
	 * that the cache matches register contents even if the registers have
	 * been previously initialized and not power cycled before probe.
	 */
	for (i = 0; i < FUNC0(tda7419_regmap_defaults); i++)
		FUNC8(tda7419->regmap,
			     tda7419_regmap_defaults[i].reg,
			     tda7419_regmap_defaults[i].def);

	ret = FUNC6(&i2c->dev,
		&tda7419_component_driver, NULL, 0);
	if (ret < 0) {
		FUNC3(&i2c->dev, "error registering component: %d\n",
				ret);
	}

	return ret;
}