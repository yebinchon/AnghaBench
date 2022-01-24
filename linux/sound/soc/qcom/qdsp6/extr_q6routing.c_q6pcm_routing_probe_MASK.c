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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,TYPE_1__*) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msm_soc_routing_component ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* routing_data ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;

	routing_data = FUNC2(sizeof(*routing_data), GFP_KERNEL);
	if (!routing_data)
		return -ENOMEM;

	routing_data->dev = dev;

	FUNC3(&routing_data->lock);
	FUNC0(dev, routing_data);

	return FUNC1(dev, &msm_soc_routing_component,
					  NULL, 0);
}