#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  num_controls; int /*<<< orphan*/  controls; } ;
struct tas571x_private {TYPE_3__ component_driver; void* regmap; TYPE_1__* chip; void* reset_gpio; void* pdn_gpio; TYPE_2__* supplies; void* mclk; } ;
struct of_device_id {TYPE_1__* data; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  supply; } ;
struct TYPE_6__ {int num_supply_names; int vol_reg_size; int /*<<< orphan*/  num_controls; int /*<<< orphan*/  controls; int /*<<< orphan*/  regmap_config; int /*<<< orphan*/ * supply_names; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int TAS571X_MAX_SUPPLIES ; 
 int /*<<< orphan*/  TAS571X_MVOL_REG ; 
 int /*<<< orphan*/  TAS571X_OSC_TRIM_REG ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 void* FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct tas571x_private* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct device*,int /*<<< orphan*/ *,struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int,TYPE_2__*) ; 
 int FUNC9 (struct device*,TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct tas571x_private*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 struct of_device_id* FUNC13 (int /*<<< orphan*/ ,struct device*) ; 
 int FUNC14 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  tas571x_component ; 
 int /*<<< orphan*/  tas571x_dai ; 
 int /*<<< orphan*/  tas571x_of_match ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 

__attribute__((used)) static int FUNC18(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	struct tas571x_private *priv;
	struct device *dev = &client->dev;
	const struct of_device_id *of_id;
	int i, ret;

	priv = FUNC6(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	FUNC11(client, priv);

	of_id = FUNC13(tas571x_of_match, dev);
	if (of_id)
		priv->chip = of_id->data;
	else
		priv->chip = (void *) id->driver_data;

	priv->mclk = FUNC4(dev, "mclk");
	if (FUNC0(priv->mclk) && FUNC1(priv->mclk) != -ENOENT) {
		FUNC3(dev, "Failed to request mclk: %ld\n",
			FUNC1(priv->mclk));
		return FUNC1(priv->mclk);
	}

	if (FUNC2(priv->chip->num_supply_names > TAS571X_MAX_SUPPLIES))
		return -EINVAL;
	for (i = 0; i < priv->chip->num_supply_names; i++)
		priv->supplies[i].supply = priv->chip->supply_names[i];

	ret = FUNC8(dev, priv->chip->num_supply_names,
				      priv->supplies);
	if (ret) {
		FUNC3(dev, "Failed to get supplies: %d\n", ret);
		return ret;
	}
	ret = FUNC16(priv->chip->num_supply_names,
				    priv->supplies);
	if (ret) {
		FUNC3(dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	priv->regmap = FUNC7(dev, NULL, client,
					priv->chip->regmap_config);
	if (FUNC0(priv->regmap))
		return FUNC1(priv->regmap);

	priv->pdn_gpio = FUNC5(dev, "pdn", GPIOD_OUT_LOW);
	if (FUNC0(priv->pdn_gpio)) {
		FUNC3(dev, "error requesting pdn_gpio: %ld\n",
			FUNC1(priv->pdn_gpio));
		return FUNC1(priv->pdn_gpio);
	}

	priv->reset_gpio = FUNC5(dev, "reset",
						   GPIOD_OUT_HIGH);
	if (FUNC0(priv->reset_gpio)) {
		FUNC3(dev, "error requesting reset_gpio: %ld\n",
			FUNC1(priv->reset_gpio));
		return FUNC1(priv->reset_gpio);
	} else if (priv->reset_gpio) {
		/* pulse the active low reset line for ~100us */
		FUNC17(100, 200);
		FUNC10(priv->reset_gpio, 0);
		FUNC17(13500, 20000);
	}

	ret = FUNC15(priv->regmap, TAS571X_OSC_TRIM_REG, 0);
	if (ret)
		return ret;

	FUNC17(50000, 60000);

	FUNC12(&priv->component_driver, &tas571x_component, sizeof(priv->component_driver));
	priv->component_driver.controls = priv->chip->controls;
	priv->component_driver.num_controls = priv->chip->num_controls;

	if (priv->chip->vol_reg_size == 2) {
		/*
		 * The master volume defaults to 0x3ff (mute), but we ignore
		 * (zero) the LSB because the hardware step size is 0.125 dB
		 * and TLV_DB_SCALE_ITEM has a resolution of 0.01 dB.
		 */
		ret = FUNC14(priv->regmap, TAS571X_MVOL_REG, 1, 0);
		if (ret)
			return ret;
	}

	return FUNC9(&client->dev,
				      &priv->component_driver,
				      &tas571x_dai, 1);
}