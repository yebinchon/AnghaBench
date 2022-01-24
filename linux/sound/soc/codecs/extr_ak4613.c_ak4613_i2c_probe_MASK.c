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
struct regmap_config {int dummy; } ;
struct regmap {int dummy; } ;
struct of_device_id {struct regmap_config* data; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {struct device_node* of_node; } ;
struct i2c_client {struct device dev; } ;
struct device_node {int dummy; } ;
struct ak4613_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  dummy_write_work; scalar_t__ sysclk; scalar_t__ cnt; int /*<<< orphan*/ * iface; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  ak4613_dai ; 
 int /*<<< orphan*/  ak4613_dummy_write ; 
 int /*<<< orphan*/  ak4613_of_match ; 
 int /*<<< orphan*/  FUNC3 (struct ak4613_priv*,struct device*) ; 
 struct ak4613_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC5 (struct i2c_client*,struct regmap_config const*) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct ak4613_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  soc_component_dev_ak4613 ; 

__attribute__((used)) static int FUNC10(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct device *dev = &i2c->dev;
	struct device_node *np = dev->of_node;
	const struct regmap_config *regmap_cfg;
	struct regmap *regmap;
	struct ak4613_priv *priv;

	regmap_cfg = NULL;
	if (np) {
		const struct of_device_id *of_id;

		of_id = FUNC9(ak4613_of_match, dev);
		if (of_id)
			regmap_cfg = of_id->data;
	} else {
		regmap_cfg = (const struct regmap_config *)id->driver_data;
	}

	if (!regmap_cfg)
		return -EINVAL;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC3(priv, dev);

	priv->iface		= NULL;
	priv->cnt		= 0;
	priv->sysclk		= 0;
	FUNC0(&priv->dummy_write_work, ak4613_dummy_write);

	FUNC8(&priv->lock);

	FUNC7(i2c, priv);

	regmap = FUNC5(i2c, regmap_cfg);
	if (FUNC1(regmap))
		return FUNC2(regmap);

	return FUNC6(dev, &soc_component_dev_ak4613,
				      &ak4613_dai, 1);
}