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
struct adau1977 {int enabled; scalar_t__ avdd_reg; scalar_t__ dvdd_reg; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* switch_mode ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAU1977_POWER_PWUP ; 
 int /*<<< orphan*/  ADAU1977_REG_PLL ; 
 int /*<<< orphan*/  ADAU1977_REG_POWER ; 
 int FUNC0 (struct adau1977*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct adau1977 *adau1977)
{
	unsigned int val;
	int ret = 0;

	if (adau1977->enabled)
		return 0;

	ret = FUNC9(adau1977->avdd_reg);
	if (ret)
		return ret;

	if (adau1977->dvdd_reg) {
		ret = FUNC9(adau1977->dvdd_reg);
		if (ret)
			goto err_disable_avdd;
	}

	FUNC1(adau1977->reset_gpio, 1);

	FUNC3(adau1977->regmap, false);

	if (adau1977->switch_mode)
		adau1977->switch_mode(adau1977->dev);

	ret = FUNC0(adau1977);
	if (ret)
		goto err_disable_dvdd;

	ret = FUNC6(adau1977->regmap, ADAU1977_REG_POWER,
		ADAU1977_POWER_PWUP, ADAU1977_POWER_PWUP);
	if (ret)
		goto err_disable_dvdd;

	ret = FUNC4(adau1977->regmap);
	if (ret)
		goto err_disable_dvdd;

	/*
	 * The PLL register is not affected by the software reset. It is
	 * possible that the value of the register was changed to the
	 * default value while we were in cache only mode. In this case
	 * regcache_sync will skip over it and we have to manually sync
	 * it.
	 */
	ret = FUNC5(adau1977->regmap, ADAU1977_REG_PLL, &val);
	if (ret)
		goto err_disable_dvdd;

	if (val == 0x41) {
		FUNC2(adau1977->regmap, true);
		ret = FUNC7(adau1977->regmap, ADAU1977_REG_PLL,
			0x41);
		if (ret)
			goto err_disable_dvdd;
		FUNC2(adau1977->regmap, false);
	}

	adau1977->enabled = true;

	return ret;

err_disable_dvdd:
	if (adau1977->dvdd_reg)
		FUNC8(adau1977->dvdd_reg);
err_disable_avdd:
		FUNC8(adau1977->avdd_reg);
	return ret;
}