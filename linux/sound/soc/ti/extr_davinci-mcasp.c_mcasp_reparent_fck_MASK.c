#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int FUNC4 (struct clk*,struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 char* FUNC7 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct clk *gfclk, *parent_clk;
	const char *parent_name;
	int ret;

	if (!node)
		return 0;

	parent_name = FUNC7(node, "fck_parent", NULL);
	if (!parent_name)
		return 0;

	FUNC6(&pdev->dev, "Update the bindings to use assigned-clocks!\n");

	gfclk = FUNC2(&pdev->dev, "fck");
	if (FUNC0(gfclk)) {
		FUNC5(&pdev->dev, "failed to get fck\n");
		return FUNC1(gfclk);
	}

	parent_clk = FUNC2(NULL, parent_name);
	if (FUNC0(parent_clk)) {
		FUNC5(&pdev->dev, "failed to get parent clock\n");
		ret = FUNC1(parent_clk);
		goto err1;
	}

	ret = FUNC4(gfclk, parent_clk);
	if (ret) {
		FUNC5(&pdev->dev, "failed to reparent fck\n");
		goto err2;
	}

err2:
	FUNC3(parent_clk);
err1:
	FUNC3(gfclk);
	return ret;
}