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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_device_id {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct i2c_client {struct device dev; } ;
struct device_node {int dummy; } ;
struct cs53l30_private {int use_sdout2; TYPE_1__* supplies; int /*<<< orphan*/ * regmap; int /*<<< orphan*/ * mute_gpio; int /*<<< orphan*/ * mclk; scalar_t__ mclk_rate; int /*<<< orphan*/ * reset_gpio; } ;
struct TYPE_5__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 unsigned int CS53L30_DEVID ; 
 int /*<<< orphan*/  CS53L30_DEVID_AB ; 
 int /*<<< orphan*/  CS53L30_DEVID_CD ; 
 int /*<<< orphan*/  CS53L30_DEVID_E ; 
 int /*<<< orphan*/  CS53L30_MICBIAS_CTL ; 
 int /*<<< orphan*/  CS53L30_MIC_BIAS_CTRL_MASK ; 
 int /*<<< orphan*/  CS53L30_MUTEP_CTL1 ; 
 int /*<<< orphan*/  CS53L30_MUTEP_CTL1_MUTEALL ; 
 int /*<<< orphan*/  CS53L30_MUTEP_CTL2 ; 
 int /*<<< orphan*/  CS53L30_MUTE_PIN_POLARITY ; 
 int /*<<< orphan*/  CS53L30_REVID ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cs53l30_dai ; 
 int /*<<< orphan*/  cs53l30_driver ; 
 int /*<<< orphan*/  cs53l30_regmap ; 
 int /*<<< orphan*/ * cs53l30_supply_names ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC5 (struct device*,char*) ; 
 void* FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct cs53l30_private* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct device*,int,TYPE_1__*) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*,struct cs53l30_private*) ; 
 scalar_t__ FUNC14 (struct device_node const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct device_node const*,char*,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int,TYPE_1__*) ; 
 int FUNC20 (int,TYPE_1__*) ; 

__attribute__((used)) static int FUNC21(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	const struct device_node *np = client->dev.of_node;
	struct device *dev = &client->dev;
	struct cs53l30_private *cs53l30;
	unsigned int devid = 0;
	unsigned int reg;
	int ret = 0, i;
	u8 val;

	cs53l30 = FUNC7(dev, sizeof(*cs53l30), GFP_KERNEL);
	if (!cs53l30)
		return -ENOMEM;

	for (i = 0; i < FUNC0(cs53l30->supplies); i++)
		cs53l30->supplies[i].supply = cs53l30_supply_names[i];

	ret = FUNC9(dev, FUNC0(cs53l30->supplies),
				      cs53l30->supplies);
	if (ret) {
		FUNC3(dev, "failed to get supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC20(FUNC0(cs53l30->supplies),
				    cs53l30->supplies);
	if (ret) {
		FUNC3(dev, "failed to enable supplies: %d\n", ret);
		return ret;
	}

	/* Reset the Device */
	cs53l30->reset_gpio = FUNC6(dev, "reset",
						      GPIOD_OUT_LOW);
	if (FUNC1(cs53l30->reset_gpio)) {
		ret = FUNC2(cs53l30->reset_gpio);
		goto error;
	}

	FUNC12(cs53l30->reset_gpio, 1);

	FUNC13(client, cs53l30);

	cs53l30->mclk_rate = 0;

	cs53l30->regmap = FUNC8(client, &cs53l30_regmap);
	if (FUNC1(cs53l30->regmap)) {
		ret = FUNC2(cs53l30->regmap);
		FUNC3(dev, "regmap_init() failed: %d\n", ret);
		goto error;
	}

	/* Initialize codec */
	ret = FUNC16(cs53l30->regmap, CS53L30_DEVID_AB, &reg);
	devid = reg << 12;

	ret = FUNC16(cs53l30->regmap, CS53L30_DEVID_CD, &reg);
	devid |= reg << 4;

	ret = FUNC16(cs53l30->regmap, CS53L30_DEVID_E, &reg);
	devid |= (reg & 0xF0) >> 4;

	if (devid != CS53L30_DEVID) {
		ret = -ENODEV;
		FUNC3(dev, "Device ID (%X). Expected %X\n",
			devid, CS53L30_DEVID);
		goto error;
	}

	ret = FUNC16(cs53l30->regmap, CS53L30_REVID, &reg);
	if (ret < 0) {
		FUNC3(dev, "failed to get Revision ID: %d\n", ret);
		goto error;
	}

	/* Check if MCLK provided */
	cs53l30->mclk = FUNC5(dev, "mclk");
	if (FUNC1(cs53l30->mclk)) {
		if (FUNC2(cs53l30->mclk) != -ENOENT) {
			ret = FUNC2(cs53l30->mclk);
			goto error;
		}
		/* Otherwise mark the mclk pointer to NULL */
		cs53l30->mclk = NULL;
	}

	/* Fetch the MUTE control */
	cs53l30->mute_gpio = FUNC6(dev, "mute",
						     GPIOD_OUT_HIGH);
	if (FUNC1(cs53l30->mute_gpio)) {
		ret = FUNC2(cs53l30->mute_gpio);
		goto error;
	}

	if (cs53l30->mute_gpio) {
		/* Enable MUTE controls via MUTE pin */
		FUNC18(cs53l30->regmap, CS53L30_MUTEP_CTL1,
			     CS53L30_MUTEP_CTL1_MUTEALL);
		/* Flip the polarity of MUTE pin */
		if (FUNC11(cs53l30->mute_gpio))
			FUNC17(cs53l30->regmap, CS53L30_MUTEP_CTL2,
					   CS53L30_MUTE_PIN_POLARITY, 0);
	}

	if (!FUNC15(np, "cirrus,micbias-lvl", &val))
		FUNC17(cs53l30->regmap, CS53L30_MICBIAS_CTL,
				   CS53L30_MIC_BIAS_CTRL_MASK, val);

	if (FUNC14(np, "cirrus,use-sdout2"))
		cs53l30->use_sdout2 = true;

	FUNC4(dev, "Cirrus Logic CS53L30, Revision: %02X\n", reg & 0xFF);

	ret = FUNC10(dev, &cs53l30_driver, &cs53l30_dai, 1);
	if (ret) {
		FUNC3(dev, "failed to register component: %d\n", ret);
		goto error;
	}

	return 0;

error:
	FUNC19(FUNC0(cs53l30->supplies),
			       cs53l30->supplies);
	return ret;
}