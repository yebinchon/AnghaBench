#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct stm32_i2s_data {struct reset_control* x11kclk; struct reset_control* x8kclk; struct reset_control* i2sclk; struct reset_control* pclk; int /*<<< orphan*/  phys_addr; struct reset_control* base; struct regmap_config const* regmap_conf; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct reset_control {int dummy; } ;
struct regmap_config {int dummy; } ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int FUNC1 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 void* FUNC4 (TYPE_1__*,char*) ; 
 struct reset_control* FUNC5 (TYPE_1__*,struct resource*) ; 
 int FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stm32_i2s_data*) ; 
 struct reset_control* FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC12 (struct reset_control*) ; 
 int /*<<< orphan*/  stm32_i2s_ids ; 
 int /*<<< orphan*/  stm32_i2s_isr ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev,
			      struct stm32_i2s_data *i2s)
{
	struct device_node *np = pdev->dev.of_node;
	const struct of_device_id *of_id;
	struct reset_control *rst;
	struct resource *res;
	int irq, ret;

	if (!np)
		return -ENODEV;

	of_id = FUNC8(stm32_i2s_ids, &pdev->dev);
	if (of_id)
		i2s->regmap_conf = (const struct regmap_config *)of_id->data;
	else
		return -EINVAL;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	i2s->base = FUNC5(&pdev->dev, res);
	if (FUNC0(i2s->base))
		return FUNC1(i2s->base);

	i2s->phys_addr = res->start;

	/* Get clocks */
	i2s->pclk = FUNC4(&pdev->dev, "pclk");
	if (FUNC0(i2s->pclk)) {
		FUNC2(&pdev->dev, "Could not get pclk\n");
		return FUNC1(i2s->pclk);
	}

	i2s->i2sclk = FUNC4(&pdev->dev, "i2sclk");
	if (FUNC0(i2s->i2sclk)) {
		FUNC2(&pdev->dev, "Could not get i2sclk\n");
		return FUNC1(i2s->i2sclk);
	}

	i2s->x8kclk = FUNC4(&pdev->dev, "x8k");
	if (FUNC0(i2s->x8kclk)) {
		FUNC2(&pdev->dev, "missing x8k parent clock\n");
		return FUNC1(i2s->x8kclk);
	}

	i2s->x11kclk = FUNC4(&pdev->dev, "x11k");
	if (FUNC0(i2s->x11kclk)) {
		FUNC2(&pdev->dev, "missing x11k parent clock\n");
		return FUNC1(i2s->x11kclk);
	}

	/* Get irqs */
	irq = FUNC9(pdev, 0);
	if (irq < 0)
		return irq;

	ret = FUNC6(&pdev->dev, irq, stm32_i2s_isr, IRQF_ONESHOT,
			       FUNC3(&pdev->dev), i2s);
	if (ret) {
		FUNC2(&pdev->dev, "irq request returned %d\n", ret);
		return ret;
	}

	/* Reset */
	rst = FUNC7(&pdev->dev, NULL);
	if (!FUNC0(rst)) {
		FUNC11(rst);
		FUNC13(2);
		FUNC12(rst);
	}

	return 0;
}