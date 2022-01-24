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
typedef  int /*<<< orphan*/  u32 ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct pistachio_internal_dac {int /*<<< orphan*/  supply; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PISTACHIO_INTERNAL_DAC_CTRL ; 
 int /*<<< orphan*/  PISTACHIO_INTERNAL_DAC_CTRL_PWR_SEL_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct pistachio_internal_dac* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pistachio_internal_dac_dais ; 
 int /*<<< orphan*/  pistachio_internal_dac_driver ; 
 int /*<<< orphan*/  FUNC7 (struct pistachio_internal_dac*) ; 
 int /*<<< orphan*/  FUNC8 (struct pistachio_internal_dac*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct pistachio_internal_dac*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct pistachio_internal_dac *dac;
	int ret, voltage;
	struct device *dev = &pdev->dev;
	u32 reg;

	dac = FUNC4(dev, sizeof(*dac), GFP_KERNEL);

	if (!dac)
		return -ENOMEM;

	FUNC9(pdev, dac);

	dac->regmap = FUNC18(pdev->dev.of_node,
							    "img,cr-top");
	if (FUNC1(dac->regmap))
		return FUNC2(dac->regmap);

	dac->supply = FUNC5(dev, "VDD");
	if (FUNC1(dac->supply)) {
		ret = FUNC2(dac->supply);
		if (ret != -EPROBE_DEFER)
			FUNC3(dev, "failed to acquire supply 'VDD-supply': %d\n", ret);
		return ret;
	}

	ret = FUNC16(dac->supply);
	if (ret) {
		FUNC3(dev, "failed to enable supply: %d\n", ret);
		return ret;
	}

	voltage = FUNC17(dac->supply);

	switch (voltage) {
	case 1800000:
		reg = 0;
		break;
	case 3300000:
		reg = PISTACHIO_INTERNAL_DAC_CTRL_PWR_SEL_MASK;
		break;
	default:
		FUNC3(dev, "invalid voltage: %d\n", voltage);
		ret = -EINVAL;
		goto err_regulator;
	}

	FUNC14(dac->regmap, PISTACHIO_INTERNAL_DAC_CTRL,
			PISTACHIO_INTERNAL_DAC_CTRL_PWR_SEL_MASK, reg);

	FUNC7(dac);
	FUNC8(dac);

	FUNC13(dev);
	FUNC11(dev);
	FUNC12(dev);

	ret = FUNC6(dev,
			&pistachio_internal_dac_driver,
			pistachio_internal_dac_dais,
			FUNC0(pistachio_internal_dac_dais));
	if (ret) {
		FUNC3(dev, "failed to register component: %d\n", ret);
		goto err_pwr;
	}

	return 0;

err_pwr:
	FUNC10(&pdev->dev);
	FUNC7(dac);
err_regulator:
	FUNC15(dac->supply);

	return ret;
}