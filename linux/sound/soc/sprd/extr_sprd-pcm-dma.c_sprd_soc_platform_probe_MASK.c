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
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sprd_soc_component ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	int ret;

	ret = FUNC3(&pdev->dev, np, 0);
	if (ret)
		FUNC1(&pdev->dev,
			 "no reserved DMA memory for audio platform device\n");

	ret = FUNC2(&pdev->dev, &sprd_soc_component,
					      NULL, 0);
	if (ret)
		FUNC0(&pdev->dev, "could not register platform:%d\n", ret);

	return ret;
}