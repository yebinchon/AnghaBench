#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stm32_spdifrx_data {scalar_t__ irq; int /*<<< orphan*/  kclk; int /*<<< orphan*/  phys_addr; int /*<<< orphan*/  base; struct regmap_config const* regmap_conf; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct regmap_config {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct resource*) ; 
 struct of_device_id* FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stm32_spdifrx_ids ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev,
				  struct stm32_spdifrx_data *spdifrx)
{
	struct device_node *np = pdev->dev.of_node;
	const struct of_device_id *of_id;
	struct resource *res;

	if (!np)
		return -ENODEV;

	of_id = FUNC5(stm32_spdifrx_ids, &pdev->dev);
	if (of_id)
		spdifrx->regmap_conf =
			(const struct regmap_config *)of_id->data;
	else
		return -EINVAL;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	spdifrx->base = FUNC4(&pdev->dev, res);
	if (FUNC0(spdifrx->base))
		return FUNC1(spdifrx->base);

	spdifrx->phys_addr = res->start;

	spdifrx->kclk = FUNC3(&pdev->dev, "kclk");
	if (FUNC0(spdifrx->kclk)) {
		FUNC2(&pdev->dev, "Could not get kclk\n");
		return FUNC1(spdifrx->kclk);
	}

	spdifrx->irq = FUNC6(pdev, 0);
	if (spdifrx->irq < 0)
		return spdifrx->irq;

	return 0;
}