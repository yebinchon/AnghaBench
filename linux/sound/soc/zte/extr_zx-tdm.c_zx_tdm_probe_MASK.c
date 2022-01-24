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
struct zx_tdm_info {struct regmap* regbase; int /*<<< orphan*/  phy_addr; struct regmap* dai_pclk; struct regmap* dai_wclk; struct device* dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_phandle_args {unsigned int* args; int /*<<< orphan*/  np; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 void* FUNC3 (struct device*,char*) ; 
 struct regmap* FUNC4 (struct device*,struct resource*) ; 
 struct zx_tdm_info* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct zx_tdm_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct regmap*,unsigned int,unsigned int,unsigned int) ; 
 struct regmap* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zx_tdm_component ; 
 int /*<<< orphan*/  zx_tdm_dai ; 
 int /*<<< orphan*/  FUNC14 (struct zx_tdm_info*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct of_phandle_args out_args;
	unsigned int dma_reg_offset;
	struct zx_tdm_info *zx_tdm;
	unsigned int dma_mask;
	struct resource *res;
	struct regmap *regmap_sysctrl;
	int ret;

	zx_tdm = FUNC5(&pdev->dev, sizeof(*zx_tdm), GFP_KERNEL);
	if (!zx_tdm)
		return -ENOMEM;

	zx_tdm->dev = dev;

	zx_tdm->dai_wclk = FUNC3(&pdev->dev, "wclk");
	if (FUNC0(zx_tdm->dai_wclk)) {
		FUNC2(&pdev->dev, "Fail to get wclk\n");
		return FUNC1(zx_tdm->dai_wclk);
	}

	zx_tdm->dai_pclk = FUNC3(&pdev->dev, "pclk");
	if (FUNC0(zx_tdm->dai_pclk)) {
		FUNC2(&pdev->dev, "Fail to get pclk\n");
		return FUNC1(zx_tdm->dai_pclk);
	}

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	zx_tdm->phy_addr = res->start;
	zx_tdm->regbase = FUNC4(&pdev->dev, res);
	if (FUNC0(zx_tdm->regbase))
		return FUNC1(zx_tdm->regbase);

	ret = FUNC9(pdev->dev.of_node,
				"zte,tdm-dma-sysctrl", 2, 0, &out_args);
	if (ret) {
		FUNC2(&pdev->dev, "Fail to get zte,tdm-dma-sysctrl\n");
		return ret;
	}

	dma_reg_offset = out_args.args[0];
	dma_mask = out_args.args[1];
	regmap_sysctrl = FUNC13(out_args.np);
	if (FUNC0(regmap_sysctrl)) {
		FUNC8(out_args.np);
		return FUNC1(regmap_sysctrl);
	}

	FUNC12(regmap_sysctrl, dma_reg_offset, dma_mask, dma_mask);
	FUNC8(out_args.np);

	FUNC14(zx_tdm);
	FUNC11(pdev, zx_tdm);

	ret = FUNC7(&pdev->dev, &zx_tdm_component,
						&zx_tdm_dai, 1);
	if (ret) {
		FUNC2(&pdev->dev, "Register DAI failed: %d\n", ret);
		return ret;
	}

	ret = FUNC6(&pdev->dev, NULL, 0);
	if (ret)
		FUNC2(&pdev->dev, "Register platform PCM failed: %d\n", ret);

	return ret;
}