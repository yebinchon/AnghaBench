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
struct wm8974_priv {int dummy; } ;
struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 struct wm8974_priv* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC3 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct wm8974_priv*) ; 
 int /*<<< orphan*/  soc_component_dev_wm8974 ; 
 int /*<<< orphan*/  wm8974_dai ; 
 int /*<<< orphan*/  wm8974_regmap ; 

__attribute__((used)) static int FUNC6(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct wm8974_priv *priv;
	struct regmap *regmap;
	int ret;

	priv = FUNC2(&i2c->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC5(i2c, priv);

	regmap = FUNC3(i2c, &wm8974_regmap);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	ret = FUNC4(&i2c->dev,
			&soc_component_dev_wm8974, &wm8974_dai, 1);

	return ret;
}