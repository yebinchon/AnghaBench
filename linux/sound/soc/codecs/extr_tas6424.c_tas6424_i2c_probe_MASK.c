#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tas6424_data {int /*<<< orphan*/  fault_check_work; int /*<<< orphan*/ * regmap; TYPE_1__* supplies; int /*<<< orphan*/ * mute_gpio; int /*<<< orphan*/ * standby_gpio; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TAS6424_MODE_CTRL ; 
 int /*<<< orphan*/  TAS6424_RESET ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct tas6424_data*) ; 
 void* FUNC7 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct tas6424_data* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct device*,int,TYPE_1__*) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  soc_codec_dev_tas6424 ; 
 TYPE_1__* tas6424_dai ; 
 int /*<<< orphan*/  tas6424_fault_check_work ; 
 int /*<<< orphan*/  tas6424_regmap_config ; 
 int /*<<< orphan*/ * tas6424_supply_names ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct tas6424_data *tas6424;
	int ret;
	int i;

	tas6424 = FUNC8(dev, sizeof(*tas6424), GFP_KERNEL);
	if (!tas6424)
		return -ENOMEM;
	FUNC6(dev, tas6424);

	tas6424->dev = dev;

	tas6424->regmap = FUNC9(client, &tas6424_regmap_config);
	if (FUNC2(tas6424->regmap)) {
		ret = FUNC3(tas6424->regmap);
		FUNC4(dev, "unable to allocate register map: %d\n", ret);
		return ret;
	}

	/*
	 * Get control of the standby pin and set it LOW to take the codec
	 * out of the stand-by mode.
	 * Note: The actual pin polarity is taken care of in the GPIO lib
	 * according the polarity specified in the DTS.
	 */
	tas6424->standby_gpio = FUNC7(dev, "standby",
						      GPIOD_OUT_LOW);
	if (FUNC2(tas6424->standby_gpio)) {
		if (FUNC3(tas6424->standby_gpio) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		FUNC5(dev, "failed to get standby GPIO: %ld\n",
			FUNC3(tas6424->standby_gpio));
		tas6424->standby_gpio = NULL;
	}

	/*
	 * Get control of the mute pin and set it HIGH in order to start with
	 * all the output muted.
	 * Note: The actual pin polarity is taken care of in the GPIO lib
	 * according the polarity specified in the DTS.
	 */
	tas6424->mute_gpio = FUNC7(dev, "mute",
						      GPIOD_OUT_HIGH);
	if (FUNC2(tas6424->mute_gpio)) {
		if (FUNC3(tas6424->mute_gpio) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		FUNC5(dev, "failed to get nmute GPIO: %ld\n",
			FUNC3(tas6424->mute_gpio));
		tas6424->mute_gpio = NULL;
	}

	for (i = 0; i < FUNC0(tas6424->supplies); i++)
		tas6424->supplies[i].supply = tas6424_supply_names[i];
	ret = FUNC10(dev, FUNC0(tas6424->supplies),
				      tas6424->supplies);
	if (ret) {
		FUNC4(dev, "unable to request supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC13(FUNC0(tas6424->supplies),
				    tas6424->supplies);
	if (ret) {
		FUNC4(dev, "unable to enable supplies: %d\n", ret);
		return ret;
	}

	/* Reset device to establish well-defined startup state */
	ret = FUNC12(tas6424->regmap, TAS6424_MODE_CTRL,
				 TAS6424_RESET, TAS6424_RESET);
	if (ret) {
		FUNC4(dev, "unable to reset device: %d\n", ret);
		return ret;
	}

	FUNC1(&tas6424->fault_check_work, tas6424_fault_check_work);

	ret = FUNC11(dev, &soc_codec_dev_tas6424,
				     tas6424_dai, FUNC0(tas6424_dai));
	if (ret < 0) {
		FUNC4(dev, "unable to register codec: %d\n", ret);
		return ret;
	}

	return 0;
}