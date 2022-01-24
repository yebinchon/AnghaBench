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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct lpass_variant {int dummy; } ;
struct lpass_data {scalar_t__ lpaif_irq; int /*<<< orphan*/  lpaif_map; struct lpass_variant* variant; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (struct lpass_variant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPAIF_IRQ_PORT_HOST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct lpass_data*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpass_component_driver ; 
 int /*<<< orphan*/  lpass_platform_lpaif_irq ; 
 struct lpass_data* FUNC4 (struct platform_device*) ; 
 scalar_t__ FUNC5 (struct platform_device*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct platform_device *pdev)
{
	struct lpass_data *drvdata = FUNC4(pdev);
	struct lpass_variant *v = drvdata->variant;
	int ret;

	drvdata->lpaif_irq = FUNC5(pdev, "lpass-irq-lpaif");
	if (drvdata->lpaif_irq < 0)
		return -ENODEV;

	/* ensure audio hardware is disabled */
	ret = FUNC6(drvdata->lpaif_map,
			FUNC0(v, LPAIF_IRQ_PORT_HOST), 0);
	if (ret) {
		FUNC1(&pdev->dev, "error writing to irqen reg: %d\n", ret);
		return ret;
	}

	ret = FUNC2(&pdev->dev, drvdata->lpaif_irq,
			lpass_platform_lpaif_irq, IRQF_TRIGGER_RISING,
			"lpass-irq-lpaif", drvdata);
	if (ret) {
		FUNC1(&pdev->dev, "irq request failed: %d\n", ret);
		return ret;
	}


	return FUNC3(&pdev->dev,
			&lpass_component_driver, NULL, 0);
}