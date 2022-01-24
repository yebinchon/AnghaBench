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
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct cs42l51_private {TYPE_1__* supplies; struct regmap* reset_gpio; struct regmap* mclk_handle; struct regmap* regmap; } ;
struct TYPE_5__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CS42L51_CHIP_ID ; 
 int /*<<< orphan*/  CS42L51_CHIP_REV_A ; 
 int /*<<< orphan*/  CS42L51_CHIP_REV_B ; 
 int /*<<< orphan*/  CS42L51_CHIP_REV_ID ; 
 unsigned int CS42L51_CHIP_REV_MASK ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC2 (struct regmap*) ; 
 int FUNC3 (struct regmap*) ; 
 int /*<<< orphan*/  cs42l51_dai ; 
 int /*<<< orphan*/ * cs42l51_supply_names ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct cs42l51_private*) ; 
 struct regmap* FUNC8 (struct device*,char*) ; 
 struct regmap* FUNC9 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct cs42l51_private* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device*,int,TYPE_1__*) ; 
 int FUNC12 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct regmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC16 (int,TYPE_1__*) ; 
 int FUNC17 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  soc_component_device_cs42l51 ; 

int FUNC18(struct device *dev, struct regmap *regmap)
{
	struct cs42l51_private *cs42l51;
	unsigned int val;
	int ret, i;

	if (FUNC2(regmap))
		return FUNC3(regmap);

	cs42l51 = FUNC10(dev, sizeof(struct cs42l51_private),
			       GFP_KERNEL);
	if (!cs42l51)
		return -ENOMEM;

	FUNC7(dev, cs42l51);
	cs42l51->regmap = regmap;

	cs42l51->mclk_handle = FUNC8(dev, "MCLK");
	if (FUNC2(cs42l51->mclk_handle)) {
		if (FUNC3(cs42l51->mclk_handle) != -ENOENT)
			return FUNC3(cs42l51->mclk_handle);
		cs42l51->mclk_handle = NULL;
	}

	for (i = 0; i < FUNC0(cs42l51->supplies); i++)
		cs42l51->supplies[i].supply = cs42l51_supply_names[i];

	ret = FUNC11(dev, FUNC0(cs42l51->supplies),
				      cs42l51->supplies);
	if (ret != 0) {
		FUNC5(dev, "Failed to request supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC17(FUNC0(cs42l51->supplies),
				    cs42l51->supplies);
	if (ret != 0) {
		FUNC5(dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	cs42l51->reset_gpio = FUNC9(dev, "reset",
						      GPIOD_OUT_LOW);
	if (FUNC2(cs42l51->reset_gpio))
		return FUNC3(cs42l51->reset_gpio);

	if (cs42l51->reset_gpio) {
		FUNC4(dev, "Release reset gpio\n");
		FUNC13(cs42l51->reset_gpio, 0);
		FUNC14(2);
	}

	/* Verify that we have a CS42L51 */
	ret = FUNC15(regmap, CS42L51_CHIP_REV_ID, &val);
	if (ret < 0) {
		FUNC5(dev, "failed to read I2C\n");
		goto error;
	}

	if ((val != FUNC1(CS42L51_CHIP_ID, CS42L51_CHIP_REV_A)) &&
	    (val != FUNC1(CS42L51_CHIP_ID, CS42L51_CHIP_REV_B))) {
		FUNC5(dev, "Invalid chip id: %x\n", val);
		ret = -ENODEV;
		goto error;
	}
	FUNC6(dev, "Cirrus Logic CS42L51, Revision: %02X\n",
		 val & CS42L51_CHIP_REV_MASK);

	ret = FUNC12(dev,
			&soc_component_device_cs42l51, &cs42l51_dai, 1);
	if (ret < 0)
		goto error;

	return 0;

error:
	FUNC16(FUNC0(cs42l51->supplies),
			       cs42l51->supplies);
	return ret;
}