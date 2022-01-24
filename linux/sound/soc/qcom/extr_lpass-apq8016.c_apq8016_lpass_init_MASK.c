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
struct lpass_data {void* pcnoc_sway_clk; void* pcnoc_mport_clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 void* FUNC4 (struct device*,char*) ; 
 struct lpass_data* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct lpass_data *drvdata = FUNC5(pdev);
	struct device *dev = &pdev->dev;
	int ret;

	drvdata->pcnoc_mport_clk = FUNC4(dev, "pcnoc-mport-clk");
	if (FUNC0(drvdata->pcnoc_mport_clk)) {
		FUNC3(&pdev->dev, "error getting pcnoc-mport-clk: %ld\n",
			FUNC1(drvdata->pcnoc_mport_clk));
		return FUNC1(drvdata->pcnoc_mport_clk);
	}

	ret = FUNC2(drvdata->pcnoc_mport_clk);
	if (ret) {
		FUNC3(&pdev->dev, "Error enabling pcnoc-mport-clk: %d\n",
			ret);
		return ret;
	}

	drvdata->pcnoc_sway_clk = FUNC4(dev, "pcnoc-sway-clk");
	if (FUNC0(drvdata->pcnoc_sway_clk)) {
		FUNC3(&pdev->dev, "error getting pcnoc-sway-clk: %ld\n",
			FUNC1(drvdata->pcnoc_sway_clk));
		return FUNC1(drvdata->pcnoc_sway_clk);
	}

	ret = FUNC2(drvdata->pcnoc_sway_clk);
	if (ret) {
		FUNC3(&pdev->dev, "Error enabling pcnoc_sway_clk: %d\n", ret);
		return ret;
	}

	return 0;
}