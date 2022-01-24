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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct jz_icdc {int /*<<< orphan*/  clk; int /*<<< orphan*/  regmap; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct jz_icdc* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *,struct jz_icdc*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  jz4725b_codec ; 
 int /*<<< orphan*/  jz4725b_codec_dai ; 
 int /*<<< orphan*/  jz4725b_codec_regmap_config ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct jz_icdc*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct jz_icdc *icdc;
	int ret;

	icdc = FUNC4(dev, sizeof(*icdc), GFP_KERNEL);
	if (!icdc)
		return -ENOMEM;

	icdc->base = FUNC5(pdev, 0);
	if (FUNC0(icdc->base))
		return FUNC1(icdc->base);

	icdc->regmap = FUNC6(dev, NULL, icdc,
					&jz4725b_codec_regmap_config);
	if (FUNC0(icdc->regmap))
		return FUNC1(icdc->regmap);

	icdc->clk = FUNC3(&pdev->dev, "aic");
	if (FUNC0(icdc->clk))
		return FUNC1(icdc->clk);

	FUNC8(pdev, icdc);

	ret = FUNC7(dev, &jz4725b_codec,
					      &jz4725b_codec_dai, 1);
	if (ret)
		FUNC2(dev, "Failed to register codec\n");

	return ret;
}