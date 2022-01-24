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
struct tpa6130a2_platform_data {scalar_t__ power_gpio; } ;
struct tpa6130a2_data {scalar_t__ power_gpio; int id; int /*<<< orphan*/  regmap; int /*<<< orphan*/  supply; struct device* dev; } ;
struct i2c_device_id {int driver_data; } ;
struct device {struct device_node* of_node; struct tpa6130a2_platform_data* platform_data; } ;
struct i2c_client {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  TPA6130A2 129 
 int /*<<< orphan*/  TPA6130A2_REG_VERSION ; 
 unsigned int TPA6130A2_VERSION_MASK ; 
#define  TPA6140A2 128 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned int) ; 
 int FUNC4 (struct device*,scalar_t__,char*) ; 
 struct tpa6130a2_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char const*) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct tpa6130a2_data*) ; 
 scalar_t__ FUNC12 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  tpa6130a2_component_driver ; 
 int FUNC14 (struct tpa6130a2_data*,int) ; 
 int /*<<< orphan*/  tpa6130a2_regmap_config ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct device *dev;
	struct tpa6130a2_data *data;
	struct tpa6130a2_platform_data *pdata = client->dev.platform_data;
	struct device_node *np = client->dev.of_node;
	const char *regulator;
	unsigned int version;
	int ret;

	dev = &client->dev;

	data = FUNC5(&client->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->dev = dev;

	data->regmap = FUNC6(client, &tpa6130a2_regmap_config);
	if (FUNC0(data->regmap))
		return FUNC1(data->regmap);

	if (pdata) {
		data->power_gpio = pdata->power_gpio;
	} else if (np) {
		data->power_gpio = FUNC12(np, "power-gpio", 0);
	} else {
		FUNC2(dev, "Platform data not set\n");
		FUNC9();
		return -ENODEV;
	}

	FUNC11(client, data);

	data->id = id->driver_data;

	if (data->power_gpio >= 0) {
		ret = FUNC4(dev, data->power_gpio,
					"tpa6130a2 enable");
		if (ret < 0) {
			FUNC2(dev, "Failed to request power GPIO (%d)\n",
				data->power_gpio);
			return ret;
		}
		FUNC10(data->power_gpio, 0);
	}

	switch (data->id) {
	default:
		FUNC3(dev, "Unknown TPA model (%d). Assuming 6130A2\n",
			 data->id);
		/* fall through */
	case TPA6130A2:
		regulator = "Vdd";
		break;
	case TPA6140A2:
		regulator = "AVdd";
		break;
	}

	data->supply = FUNC7(dev, regulator);
	if (FUNC0(data->supply)) {
		ret = FUNC1(data->supply);
		FUNC2(dev, "Failed to request supply: %d\n", ret);
		return ret;
	}

	ret = FUNC14(data, true);
	if (ret != 0)
		return ret;


	/* Read version */
	FUNC13(data->regmap, TPA6130A2_REG_VERSION, &version);
	version &= TPA6130A2_VERSION_MASK;
	if ((version != 1) && (version != 2))
		FUNC3(dev, "UNTESTED version detected (%d)\n", version);

	/* Disable the chip */
	ret = FUNC14(data, false);
	if (ret != 0)
		return ret;

	return FUNC8(&client->dev,
			&tpa6130a2_component_driver, NULL, 0);
}