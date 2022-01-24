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
struct max9850_priv {int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct max9850_priv* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct max9850_priv*) ; 
 int /*<<< orphan*/  max9850_dai ; 
 int /*<<< orphan*/  max9850_regmap ; 
 int /*<<< orphan*/  soc_component_dev_max9850 ; 

__attribute__((used)) static int FUNC6(struct i2c_client *i2c,
			     const struct i2c_device_id *id)
{
	struct max9850_priv *max9850;
	int ret;

	max9850 = FUNC2(&i2c->dev, sizeof(struct max9850_priv),
			       GFP_KERNEL);
	if (max9850 == NULL)
		return -ENOMEM;

	max9850->regmap = FUNC3(i2c, &max9850_regmap);
	if (FUNC0(max9850->regmap))
		return FUNC1(max9850->regmap);

	FUNC5(i2c, max9850);

	ret = FUNC4(&i2c->dev,
			&soc_component_dev_max9850, &max9850_dai, 1);
	return ret;
}