#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mxs_saif {scalar_t__ base; int /*<<< orphan*/  clk; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BP_SAIF_CTRL_BITCLK_MULT_RATE ; 
 int EEXIST ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 scalar_t__ SAIF_CTRL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct clk* FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int FUNC5 (struct device_node*,int /*<<< orphan*/ ,struct clk*) ; 
 int /*<<< orphan*/  of_clk_src_simple_get ; 
 struct mxs_saif* FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct mxs_saif *saif = FUNC6(pdev);
	struct device_node *np = pdev->dev.of_node;
	struct clk *clk;
	int ret;

	clk = FUNC3(&pdev->dev, "mxs_saif_mclk",
				   FUNC2(saif->clk), 0,
				   saif->base + SAIF_CTRL,
				   BP_SAIF_CTRL_BITCLK_MULT_RATE, 3,
				   0, NULL);
	if (FUNC0(clk)) {
		ret = FUNC1(clk);
		if (ret == -EEXIST)
			return 0;
		FUNC4(&pdev->dev, "failed to register mclk: %d\n", ret);
		return FUNC1(clk);
	}

	ret = FUNC5(np, of_clk_src_simple_get, clk);
	if (ret)
		return ret;

	return 0;
}