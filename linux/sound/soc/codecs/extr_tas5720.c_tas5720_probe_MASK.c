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
struct tas5720_data {int devtype; TYPE_1__* supplies; int /*<<< orphan*/  regmap; struct i2c_client* tas5720_client; } ;
struct regmap_config {int dummy; } ;
struct i2c_device_id {int driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  TAS5720 129 
#define  TAS5722 128 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct tas5720_data*) ; 
 struct tas5720_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct regmap_config const*) ; 
 int FUNC7 (struct device*,int,TYPE_1__*) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  soc_component_dev_tas5720 ; 
 int /*<<< orphan*/  soc_component_dev_tas5722 ; 
 TYPE_1__* tas5720_dai ; 
 struct regmap_config tas5720_regmap_config ; 
 int /*<<< orphan*/ * tas5720_supply_names ; 
 struct regmap_config tas5722_regmap_config ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct tas5720_data *data;
	const struct regmap_config *regmap_config;
	int ret;
	int i;

	data = FUNC5(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->tas5720_client = client;
	data->devtype = id->driver_data;

	switch (id->driver_data) {
	case TAS5720:
		regmap_config = &tas5720_regmap_config;
		break;
	case TAS5722:
		regmap_config = &tas5722_regmap_config;
		break;
	default:
		FUNC3(dev, "unexpected private driver data\n");
		return -EINVAL;
	}
	data->regmap = FUNC6(client, regmap_config);
	if (FUNC1(data->regmap)) {
		ret = FUNC2(data->regmap);
		FUNC3(dev, "failed to allocate register map: %d\n", ret);
		return ret;
	}

	for (i = 0; i < FUNC0(data->supplies); i++)
		data->supplies[i].supply = tas5720_supply_names[i];

	ret = FUNC7(dev, FUNC0(data->supplies),
				      data->supplies);
	if (ret != 0) {
		FUNC3(dev, "failed to request supplies: %d\n", ret);
		return ret;
	}

	FUNC4(dev, data);

	switch (id->driver_data) {
	case TAS5720:
		ret = FUNC8(&client->dev,
					&soc_component_dev_tas5720,
					tas5720_dai,
					FUNC0(tas5720_dai));
		break;
	case TAS5722:
		ret = FUNC8(&client->dev,
					&soc_component_dev_tas5722,
					tas5720_dai,
					FUNC0(tas5720_dai));
		break;
	default:
		FUNC3(dev, "unexpected private driver data\n");
		return -EINVAL;
	}
	if (ret < 0) {
		FUNC3(dev, "failed to register component: %d\n", ret);
		return ret;
	}

	return 0;
}