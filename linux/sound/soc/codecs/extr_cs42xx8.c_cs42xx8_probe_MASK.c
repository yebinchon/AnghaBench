#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct of_device_id {TYPE_2__* data; } ;
struct device {int dummy; } ;
struct cs42xx8_priv {TYPE_3__* supplies; struct regmap* regmap; TYPE_2__* drvdata; struct regmap* clk; int /*<<< orphan*/  sysclk; struct regmap* gpiod_reset; } ;
struct TYPE_9__ {int channels_max; } ;
struct TYPE_12__ {TYPE_1__ capture; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int /*<<< orphan*/  supply; } ;
struct TYPE_10__ {int num_adcs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  CS42XX8_CHIPID ; 
 int CS42XX8_CHIPID_CHIP_ID_MASK ; 
 int CS42XX8_CHIPID_REV_ID_MASK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*) ; 
 TYPE_5__ cs42xx8_dai ; 
 int /*<<< orphan*/  cs42xx8_driver ; 
 int /*<<< orphan*/  cs42xx8_of_match ; 
 int /*<<< orphan*/ * cs42xx8_supply_names ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct cs42xx8_priv*) ; 
 struct regmap* FUNC7 (struct device*,char*) ; 
 struct regmap* FUNC8 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct cs42xx8_priv* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,int,TYPE_3__*) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct regmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 struct of_device_id* FUNC14 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct regmap*,int) ; 
 int FUNC16 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (int,TYPE_3__*) ; 
 int FUNC18 (int,TYPE_3__*) ; 

int FUNC19(struct device *dev, struct regmap *regmap)
{
	const struct of_device_id *of_id;
	struct cs42xx8_priv *cs42xx8;
	int ret, val, i;

	if (FUNC1(regmap)) {
		ret = FUNC2(regmap);
		FUNC4(dev, "failed to allocate regmap: %d\n", ret);
		return ret;
	}

	cs42xx8 = FUNC9(dev, sizeof(*cs42xx8), GFP_KERNEL);
	if (cs42xx8 == NULL)
		return -ENOMEM;

	cs42xx8->regmap = regmap;
	FUNC6(dev, cs42xx8);

	of_id = FUNC14(cs42xx8_of_match, dev);
	if (of_id)
		cs42xx8->drvdata = of_id->data;

	if (!cs42xx8->drvdata) {
		FUNC4(dev, "failed to find driver data\n");
		return -EINVAL;
	}

	cs42xx8->gpiod_reset = FUNC8(dev, "reset",
							GPIOD_OUT_HIGH);
	if (FUNC1(cs42xx8->gpiod_reset))
		return FUNC2(cs42xx8->gpiod_reset);

	FUNC12(cs42xx8->gpiod_reset, 0);

	cs42xx8->clk = FUNC7(dev, "mclk");
	if (FUNC1(cs42xx8->clk)) {
		FUNC4(dev, "failed to get the clock: %ld\n",
				FUNC2(cs42xx8->clk));
		return -EINVAL;
	}

	cs42xx8->sysclk = FUNC3(cs42xx8->clk);

	for (i = 0; i < FUNC0(cs42xx8->supplies); i++)
		cs42xx8->supplies[i].supply = cs42xx8_supply_names[i];

	ret = FUNC10(dev,
			FUNC0(cs42xx8->supplies), cs42xx8->supplies);
	if (ret) {
		FUNC4(dev, "failed to request supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC18(FUNC0(cs42xx8->supplies),
				    cs42xx8->supplies);
	if (ret) {
		FUNC4(dev, "failed to enable supplies: %d\n", ret);
		return ret;
	}

	/* Make sure hardware reset done */
	FUNC13(5);

	/* Validate the chip ID */
	ret = FUNC16(cs42xx8->regmap, CS42XX8_CHIPID, &val);
	if (ret < 0) {
		FUNC4(dev, "failed to get device ID, ret = %d", ret);
		goto err_enable;
	}

	/* The top four bits of the chip ID should be 0000 */
	if (((val & CS42XX8_CHIPID_CHIP_ID_MASK) >> 4) != 0x00) {
		FUNC4(dev, "unmatched chip ID: %d\n",
			(val & CS42XX8_CHIPID_CHIP_ID_MASK) >> 4);
		ret = -EINVAL;
		goto err_enable;
	}

	FUNC5(dev, "found device, revision %X\n",
			val & CS42XX8_CHIPID_REV_ID_MASK);

	cs42xx8_dai.name = cs42xx8->drvdata->name;

	/* Each adc supports stereo input */
	cs42xx8_dai.capture.channels_max = cs42xx8->drvdata->num_adcs * 2;

	ret = FUNC11(dev, &cs42xx8_driver, &cs42xx8_dai, 1);
	if (ret) {
		FUNC4(dev, "failed to register component:%d\n", ret);
		goto err_enable;
	}

	FUNC15(cs42xx8->regmap, true);

err_enable:
	FUNC17(FUNC0(cs42xx8->supplies),
			       cs42xx8->supplies);

	return ret;
}