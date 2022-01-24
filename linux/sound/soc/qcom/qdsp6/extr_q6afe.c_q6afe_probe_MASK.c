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
struct q6afe {int /*<<< orphan*/  port_list_lock; int /*<<< orphan*/  port_list; struct device* dev; int /*<<< orphan*/  lock; struct apr_device* apr; int /*<<< orphan*/  ainfo; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct apr_device {int /*<<< orphan*/  svc_id; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct q6afe*) ; 
 struct q6afe* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct apr_device *adev)
{
	struct q6afe *afe;
	struct device *dev = &adev->dev;

	afe = FUNC2(dev, sizeof(*afe), GFP_KERNEL);
	if (!afe)
		return -ENOMEM;

	FUNC5(adev->svc_id, &afe->ainfo);
	afe->apr = adev;
	FUNC3(&afe->lock);
	afe->dev = dev;
	FUNC0(&afe->port_list);
	FUNC6(&afe->port_list_lock);

	FUNC1(dev, afe);

	return FUNC4(dev->of_node, NULL, NULL, dev);
}