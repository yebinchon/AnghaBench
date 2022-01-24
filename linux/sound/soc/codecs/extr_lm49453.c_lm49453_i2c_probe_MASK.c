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
struct lm49453_priv {int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct lm49453_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct lm49453_priv*) ; 
 int /*<<< orphan*/  lm49453_dai ; 
 int /*<<< orphan*/  lm49453_regmap_config ; 
 int /*<<< orphan*/  soc_component_dev_lm49453 ; 

__attribute__((used)) static int FUNC8(struct i2c_client *i2c,
			     const struct i2c_device_id *id)
{
	struct lm49453_priv *lm49453;
	int ret = 0;

	lm49453 = FUNC4(&i2c->dev, sizeof(struct lm49453_priv),
				GFP_KERNEL);

	if (lm49453 == NULL)
		return -ENOMEM;

	FUNC7(i2c, lm49453);

	lm49453->regmap = FUNC5(i2c, &lm49453_regmap_config);
	if (FUNC1(lm49453->regmap)) {
		ret = FUNC2(lm49453->regmap);
		FUNC3(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	ret =  FUNC6(&i2c->dev,
				      &soc_component_dev_lm49453,
				      lm49453_dai, FUNC0(lm49453_dai));
	if (ret < 0)
		FUNC3(&i2c->dev, "Failed to register component: %d\n", ret);

	return ret;
}