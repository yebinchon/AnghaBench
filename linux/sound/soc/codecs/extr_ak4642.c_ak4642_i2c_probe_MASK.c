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
struct of_device_id {struct ak4642_drvdata* data; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {struct device_node* of_node; } ;
struct i2c_client {struct device dev; } ;
struct device_node {int dummy; } ;
typedef  struct regmap clk ;
struct ak4642_priv {struct regmap* mcko; struct ak4642_drvdata const* drvdata; } ;
struct ak4642_drvdata {int /*<<< orphan*/  regmap_config; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  ak4642_dai ; 
 int /*<<< orphan*/  ak4642_of_match ; 
 struct regmap* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct ak4642_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct ak4642_priv*) ; 
 struct of_device_id* FUNC8 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  soc_component_dev_ak4642 ; 

__attribute__((used)) static int FUNC9(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct device *dev = &i2c->dev;
	struct device_node *np = dev->of_node;
	const struct ak4642_drvdata *drvdata = NULL;
	struct regmap *regmap;
	struct ak4642_priv *priv;
	struct clk *mcko = NULL;

	if (np) {
		const struct of_device_id *of_id;

		mcko = FUNC2(dev);
		if (FUNC0(mcko))
			mcko = NULL;

		of_id = FUNC8(ak4642_of_match, dev);
		if (of_id)
			drvdata = of_id->data;
	} else {
		drvdata = (const struct ak4642_drvdata *)id->driver_data;
	}

	if (!drvdata) {
		FUNC3(dev, "Unknown device type\n");
		return -EINVAL;
	}

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->drvdata = drvdata;
	priv->mcko = mcko;

	FUNC7(i2c, priv);

	regmap = FUNC5(i2c, drvdata->regmap_config);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	return FUNC6(dev,
				&soc_component_dev_ak4642, &ak4642_dai, 1);
}