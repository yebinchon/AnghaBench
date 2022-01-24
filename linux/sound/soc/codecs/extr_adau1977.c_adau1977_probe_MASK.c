#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; int /*<<< orphan*/  list; } ;
struct adau1977 {int type; void (* switch_mode ) (struct device*) ;int max_master_fs; struct regmap* regmap; struct regmap* dvdd_reg; struct regmap* reset_gpio; struct regmap* avdd_reg; TYPE_1__ constraints; struct device* dev; } ;
typedef  enum adau1977_type { ____Placeholder_adau1977_type } adau1977_type ;

/* Variables and functions */
 int ADAU1977 ; 
 scalar_t__ ADAU1977_BLOCK_POWER_SAI_LDO_EN ; 
 int /*<<< orphan*/  ADAU1977_REG_BLOCK_POWER_SAI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  adau1977_component_driver ; 
 int /*<<< orphan*/  adau1977_dai ; 
 int FUNC3 (struct adau1977*) ; 
 int FUNC4 (struct adau1977*) ; 
 int /*<<< orphan*/  adau1977_rates ; 
 int FUNC5 (struct adau1977*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct adau1977*) ; 
 struct regmap* FUNC7 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct adau1977* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC9 (struct device*,char*) ; 
 struct regmap* FUNC10 (struct device*,char*) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (struct regmap*,int /*<<< orphan*/ ,unsigned int,int) ; 

int FUNC14(struct device *dev, struct regmap *regmap,
	enum adau1977_type type, void (*switch_mode)(struct device *dev))
{
	unsigned int power_off_mask;
	struct adau1977 *adau1977;
	int ret;

	if (FUNC1(regmap))
		return FUNC2(regmap);

	adau1977 = FUNC8(dev, sizeof(*adau1977), GFP_KERNEL);
	if (adau1977 == NULL)
		return -ENOMEM;

	adau1977->dev = dev;
	adau1977->type = type;
	adau1977->regmap = regmap;
	adau1977->switch_mode = switch_mode;
	adau1977->max_master_fs = 192000;

	adau1977->constraints.list = adau1977_rates;
	adau1977->constraints.count = FUNC0(adau1977_rates);

	adau1977->avdd_reg = FUNC9(dev, "AVDD");
	if (FUNC1(adau1977->avdd_reg))
		return FUNC2(adau1977->avdd_reg);

	adau1977->dvdd_reg = FUNC10(dev, "DVDD");
	if (FUNC1(adau1977->dvdd_reg)) {
		if (FUNC2(adau1977->dvdd_reg) != -ENODEV)
			return FUNC2(adau1977->dvdd_reg);
		adau1977->dvdd_reg = NULL;
	}

	adau1977->reset_gpio = FUNC7(dev, "reset",
						       GPIOD_OUT_LOW);
	if (FUNC1(adau1977->reset_gpio))
		return FUNC2(adau1977->reset_gpio);

	FUNC6(dev, adau1977);

	if (adau1977->reset_gpio)
		FUNC12(100);

	ret = FUNC4(adau1977);
	if (ret)
		return ret;

	if (type == ADAU1977) {
		ret = FUNC5(adau1977);
		if (ret)
			goto err_poweroff;
	}

	if (adau1977->dvdd_reg)
		power_off_mask = ~0;
	else
		power_off_mask = (unsigned int)~ADAU1977_BLOCK_POWER_SAI_LDO_EN;

	ret = FUNC13(adau1977->regmap, ADAU1977_REG_BLOCK_POWER_SAI,
				power_off_mask, 0x00);
	if (ret)
		goto err_poweroff;

	ret = FUNC3(adau1977);
	if (ret)
		return ret;

	return FUNC11(dev, &adau1977_component_driver,
			&adau1977_dai, 1);

err_poweroff:
	FUNC3(adau1977);
	return ret;

}