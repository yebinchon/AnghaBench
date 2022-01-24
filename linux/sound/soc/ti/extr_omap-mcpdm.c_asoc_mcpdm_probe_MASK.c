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
struct omap_mcpdm {scalar_t__ irq; int /*<<< orphan*/ * dev; int /*<<< orphan*/  io_base; TYPE_1__* dma_data; int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {char* filter_data; scalar_t__ addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MCPDM_REG_DN_DATA ; 
 scalar_t__ MCPDM_REG_UP_DATA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct resource*) ; 
 struct omap_mcpdm* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  omap_mcpdm_component ; 
 int /*<<< orphan*/  omap_mcpdm_dai ; 
 scalar_t__ FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct omap_mcpdm*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct omap_mcpdm *mcpdm;
	struct resource *res;
	int ret;

	mcpdm = FUNC3(&pdev->dev, sizeof(struct omap_mcpdm), GFP_KERNEL);
	if (!mcpdm)
		return -ENOMEM;

	FUNC8(pdev, mcpdm);

	FUNC5(&mcpdm->mutex);

	res = FUNC7(pdev, IORESOURCE_MEM, "dma");
	if (res == NULL)
		return -ENOMEM;

	mcpdm->dma_data[0].addr = res->start + MCPDM_REG_DN_DATA;
	mcpdm->dma_data[1].addr = res->start + MCPDM_REG_UP_DATA;

	mcpdm->dma_data[0].filter_data = "dn_link";
	mcpdm->dma_data[1].filter_data = "up_link";

	res = FUNC7(pdev, IORESOURCE_MEM, "mpu");
	mcpdm->io_base = FUNC2(&pdev->dev, res);
	if (FUNC0(mcpdm->io_base))
		return FUNC1(mcpdm->io_base);

	mcpdm->irq = FUNC6(pdev, 0);
	if (mcpdm->irq < 0)
		return mcpdm->irq;

	mcpdm->dev = &pdev->dev;

	ret =  FUNC4(&pdev->dev,
					       &omap_mcpdm_component,
					       &omap_mcpdm_dai, 1);
	if (ret)
		return ret;

	return FUNC9(&pdev->dev, "dn_link", "up_link");
}