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
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct adau {void (* switch_mode ) (struct device*) ;int type; struct regmap* sigmadsp; struct regmap* regmap; struct regmap* mclk; int /*<<< orphan*/  pll_regs; int /*<<< orphan*/  clk_src; } ;
typedef  enum adau17x1_type { ____Placeholder_adau17x1_type } adau17x1_type ;

/* Variables and functions */
 int /*<<< orphan*/  ADAU17X1_CLK_SRC_PLL_AUTO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 scalar_t__ FUNC2 (struct adau*) ; 
 int /*<<< orphan*/  adau17x1_sigmadsp_ops ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*) ; 
 int FUNC5 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct adau*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int) ; 
 struct regmap* FUNC8 (struct device*,char*) ; 
 struct adau* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct device*,struct regmap*,int /*<<< orphan*/ *,char const*) ; 

int FUNC11(struct device *dev, struct regmap *regmap,
	enum adau17x1_type type, void (*switch_mode)(struct device *dev),
	const char *firmware_name)
{
	struct adau *adau;
	int ret;

	if (FUNC0(regmap))
		return FUNC1(regmap);

	adau = FUNC9(dev, sizeof(*adau), GFP_KERNEL);
	if (!adau)
		return -ENOMEM;

	adau->mclk = FUNC8(dev, "mclk");
	if (FUNC0(adau->mclk)) {
		if (FUNC1(adau->mclk) != -ENOENT)
			return FUNC1(adau->mclk);
		/* Clock is optional (for the driver) */
		adau->mclk = NULL;
	} else if (adau->mclk) {
		adau->clk_src = ADAU17X1_CLK_SRC_PLL_AUTO;

		/*
		 * Any valid PLL output rate will work at this point, use one
		 * that is likely to be chosen later as well. The register will
		 * be written when the PLL is powered up for the first time.
		 */
		ret = FUNC3(FUNC4(adau->mclk), 48000 * 1024,
				adau->pll_regs);
		if (ret < 0)
			return ret;

		ret = FUNC5(adau->mclk);
		if (ret)
			return ret;
	}

	adau->regmap = regmap;
	adau->switch_mode = switch_mode;
	adau->type = type;

	FUNC6(dev, adau);

	if (firmware_name) {
		if (FUNC2(adau)) {
			adau->sigmadsp = FUNC10(dev, regmap,
				&adau17x1_sigmadsp_ops, firmware_name);
		} else {
			adau->sigmadsp = FUNC10(dev, regmap,
				NULL, firmware_name);
		}
		if (FUNC0(adau->sigmadsp)) {
			FUNC7(dev, "Could not find firmware file: %ld\n",
				FUNC1(adau->sigmadsp));
			adau->sigmadsp = NULL;
		}
	}

	if (switch_mode)
		switch_mode(dev);

	return 0;
}