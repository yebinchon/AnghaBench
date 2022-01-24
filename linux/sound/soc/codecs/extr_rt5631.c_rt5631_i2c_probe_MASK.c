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
struct rt5631_priv {int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct rt5631_priv* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct rt5631_priv*) ; 
 int /*<<< orphan*/  rt5631_dai ; 
 int /*<<< orphan*/  rt5631_regmap_config ; 
 int /*<<< orphan*/  soc_component_dev_rt5631 ; 

__attribute__((used)) static int FUNC7(struct i2c_client *i2c,
		    const struct i2c_device_id *id)
{
	struct rt5631_priv *rt5631;
	int ret;

	rt5631 = FUNC3(&i2c->dev, sizeof(struct rt5631_priv),
			      GFP_KERNEL);
	if (NULL == rt5631)
		return -ENOMEM;

	FUNC6(i2c, rt5631);

	rt5631->regmap = FUNC4(i2c, &rt5631_regmap_config);
	if (FUNC1(rt5631->regmap))
		return FUNC2(rt5631->regmap);

	ret = FUNC5(&i2c->dev,
			&soc_component_dev_rt5631,
			rt5631_dai, FUNC0(rt5631_dai));
	return ret;
}