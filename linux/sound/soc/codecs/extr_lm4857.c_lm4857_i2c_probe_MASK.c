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
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 struct regmap* FUNC2 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm4857_component_driver ; 
 int /*<<< orphan*/  lm4857_regmap_config ; 

__attribute__((used)) static int FUNC4(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct regmap *regmap;

	regmap = FUNC2(i2c, &lm4857_regmap_config);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	return FUNC3(&i2c->dev,
		&lm4857_component_driver, NULL, 0);
}