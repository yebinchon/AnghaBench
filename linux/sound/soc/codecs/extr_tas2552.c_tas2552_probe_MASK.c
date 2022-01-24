#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tas2552_data {TYPE_1__* supplies; int /*<<< orphan*/  regmap; struct i2c_client* tas2552_client; int /*<<< orphan*/  enable_gpio; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct tas2552_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct tas2552_data* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct device*,int,TYPE_1__*) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  soc_component_dev_tas2552 ; 
 TYPE_1__* tas2552_dai ; 
 int /*<<< orphan*/  tas2552_regmap_config ; 
 int /*<<< orphan*/ * tas2552_supply_names ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct device *dev;
	struct tas2552_data *data;
	int ret;
	int i;

	dev = &client->dev;
	data = FUNC6(&client->dev, sizeof(*data), GFP_KERNEL);
	if (data == NULL)
		return -ENOMEM;

	data->enable_gpio = FUNC5(dev, "enable",
						    GPIOD_OUT_LOW);
	if (FUNC1(data->enable_gpio))
		return FUNC2(data->enable_gpio);

	data->tas2552_client = client;
	data->regmap = FUNC7(client, &tas2552_regmap_config);
	if (FUNC1(data->regmap)) {
		ret = FUNC2(data->regmap);
		FUNC3(&client->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	for (i = 0; i < FUNC0(data->supplies); i++)
		data->supplies[i].supply = tas2552_supply_names[i];

	ret = FUNC8(dev, FUNC0(data->supplies),
				      data->supplies);
	if (ret != 0) {
		FUNC3(dev, "Failed to request supplies: %d\n", ret);
		return ret;
	}

	FUNC13(&client->dev);
	FUNC14(&client->dev, 1000);
	FUNC15(&client->dev);
	FUNC10(&client->dev);
	FUNC11(&client->dev);
	FUNC12(&client->dev);

	FUNC4(&client->dev, data);

	ret = FUNC9(&client->dev,
				      &soc_component_dev_tas2552,
				      tas2552_dai, FUNC0(tas2552_dai));
	if (ret < 0)
		FUNC3(&client->dev, "Failed to register component: %d\n", ret);

	return ret;
}