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
struct ak4535_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ak4535_dai ; 
 int /*<<< orphan*/  ak4535_regmap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct ak4535_priv* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct ak4535_priv*) ; 
 int /*<<< orphan*/  soc_component_dev_ak4535 ; 

__attribute__((used)) static int FUNC7(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct ak4535_priv *ak4535;
	int ret;

	ak4535 = FUNC3(&i2c->dev, sizeof(struct ak4535_priv),
			      GFP_KERNEL);
	if (ak4535 == NULL)
		return -ENOMEM;

	ak4535->regmap = FUNC4(i2c, &ak4535_regmap);
	if (FUNC0(ak4535->regmap)) {
		ret = FUNC1(ak4535->regmap);
		FUNC2(&i2c->dev, "Failed to init regmap: %d\n", ret);
		return ret;
	}

	FUNC6(i2c, ak4535);

	ret = FUNC5(&i2c->dev,
			&soc_component_dev_ak4535, &ak4535_dai, 1);

	return ret;
}