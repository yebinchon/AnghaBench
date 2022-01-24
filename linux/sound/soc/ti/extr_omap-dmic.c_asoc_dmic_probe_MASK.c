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
struct resource {scalar_t__ start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {char* filter_data; scalar_t__ addr; } ;
struct omap_dmic {int /*<<< orphan*/  io_base; TYPE_1__ dma_data; int /*<<< orphan*/ * dev; int /*<<< orphan*/  fclk; int /*<<< orphan*/  mutex; int /*<<< orphan*/  sysclk; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ OMAP_DMIC_DATA_REG ; 
 int /*<<< orphan*/  OMAP_DMIC_SYSCLK_SYNC_MUX_CLKS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct omap_dmic* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  omap_dmic_component ; 
 int /*<<< orphan*/  omap_dmic_dai ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct omap_dmic*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct omap_dmic *dmic;
	struct resource *res;
	int ret;

	dmic = FUNC5(&pdev->dev, sizeof(struct omap_dmic), GFP_KERNEL);
	if (!dmic)
		return -ENOMEM;

	FUNC9(pdev, dmic);
	dmic->dev = &pdev->dev;
	dmic->sysclk = OMAP_DMIC_SYSCLK_SYNC_MUX_CLKS;

	FUNC7(&dmic->mutex);

	dmic->fclk = FUNC3(dmic->dev, "fck");
	if (FUNC0(dmic->fclk)) {
		FUNC2(dmic->dev, "cant get fck\n");
		return -ENODEV;
	}

	res = FUNC8(pdev, IORESOURCE_MEM, "dma");
	if (!res) {
		FUNC2(dmic->dev, "invalid dma memory resource\n");
		return -ENODEV;
	}
	dmic->dma_data.addr = res->start + OMAP_DMIC_DATA_REG;

	dmic->dma_data.filter_data = "up_link";

	res = FUNC8(pdev, IORESOURCE_MEM, "mpu");
	dmic->io_base = FUNC4(&pdev->dev, res);
	if (FUNC0(dmic->io_base))
		return FUNC1(dmic->io_base);


	ret = FUNC6(&pdev->dev,
					      &omap_dmic_component,
					      &omap_dmic_dai, 1);
	if (ret)
		return ret;

	ret = FUNC10(&pdev->dev, NULL, "up_link");
	if (ret)
		return ret;

	return 0;
}