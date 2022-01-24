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
struct ml26124_priv {int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct ml26124_priv* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct ml26124_priv*) ; 
 int /*<<< orphan*/  ml26124_dai ; 
 int /*<<< orphan*/  ml26124_i2c_regmap ; 
 int /*<<< orphan*/  soc_component_dev_ml26124 ; 

__attribute__((used)) static int FUNC7(struct i2c_client *i2c,
			     const struct i2c_device_id *id)
{
	struct ml26124_priv *priv;
	int ret;

	priv = FUNC3(&i2c->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC6(i2c, priv);

	priv->regmap = FUNC4(i2c, &ml26124_i2c_regmap);
	if (FUNC0(priv->regmap)) {
		ret = FUNC1(priv->regmap);
		FUNC2(&i2c->dev, "regmap_init_i2c() failed: %d\n", ret);
		return ret;
	}

	return FUNC5(&i2c->dev,
			&soc_component_dev_ml26124, &ml26124_dai, 1);
}