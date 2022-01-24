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
struct sprd_mcdt_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/ * dev; int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct sprd_mcdt_dev* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct sprd_mcdt_dev*) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct sprd_mcdt_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sprd_mcdt_dev*,struct resource*) ; 
 int /*<<< orphan*/  sprd_mcdt_irq_handler ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct sprd_mcdt_dev *mcdt;
	struct resource *res;
	int ret, irq;

	mcdt = FUNC4(&pdev->dev, sizeof(*mcdt), GFP_KERNEL);
	if (!mcdt)
		return -ENOMEM;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	mcdt->base = FUNC3(&pdev->dev, res);
	if (FUNC0(mcdt->base))
		return FUNC1(mcdt->base);

	mcdt->dev = &pdev->dev;
	FUNC9(&mcdt->lock);
	FUNC8(pdev, mcdt);

	irq = FUNC6(pdev, 0);
	if (irq < 0)
		return irq;

	ret = FUNC5(&pdev->dev, irq, sprd_mcdt_irq_handler,
			       0, "sprd-mcdt", mcdt);
	if (ret) {
		FUNC2(&pdev->dev, "Failed to request MCDT IRQ\n");
		return ret;
	}

	FUNC10(mcdt, res);

	return 0;
}