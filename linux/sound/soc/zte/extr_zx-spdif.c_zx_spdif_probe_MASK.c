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
struct zx_spdif_info {int /*<<< orphan*/  reg_base; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  dai_clk; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct zx_spdif_info* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct zx_spdif_info*) ; 
 int /*<<< orphan*/  zx_spdif_component ; 
 int /*<<< orphan*/  zx_spdif_dai ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct resource *res;
	struct zx_spdif_info *zx_spdif;
	int ret;

	zx_spdif = FUNC5(&pdev->dev, sizeof(*zx_spdif), GFP_KERNEL);
	if (!zx_spdif)
		return -ENOMEM;

	zx_spdif->dai_clk = FUNC3(&pdev->dev, "tx");
	if (FUNC0(zx_spdif->dai_clk)) {
		FUNC2(&pdev->dev, "Fail to get clk\n");
		return FUNC1(zx_spdif->dai_clk);
	}

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	zx_spdif->mapbase = res->start;
	zx_spdif->reg_base = FUNC4(&pdev->dev, res);
	if (FUNC0(zx_spdif->reg_base)) {
		FUNC2(&pdev->dev, "ioremap failed!\n");
		return FUNC1(zx_spdif->reg_base);
	}

	FUNC10(zx_spdif->reg_base);
	FUNC9(pdev, zx_spdif);

	ret = FUNC7(&pdev->dev, &zx_spdif_component,
					 &zx_spdif_dai, 1);
	if (ret) {
		FUNC2(&pdev->dev, "Register DAI failed: %d\n", ret);
		return ret;
	}

	ret = FUNC6(&pdev->dev, NULL, 0);
	if (ret)
		FUNC2(&pdev->dev, "Register platform PCM failed: %d\n", ret);

	return ret;
}