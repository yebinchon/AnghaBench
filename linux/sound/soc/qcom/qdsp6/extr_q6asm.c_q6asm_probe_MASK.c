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
struct q6asm {int /*<<< orphan*/  slock; int /*<<< orphan*/  mem_wait; struct apr_device* adev; struct device* dev; int /*<<< orphan*/  ainfo; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct apr_device {int /*<<< orphan*/  svc_id; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct q6asm*) ; 
 struct q6asm* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct apr_device *adev)
{
	struct device *dev = &adev->dev;
	struct q6asm *q6asm;

	q6asm = FUNC1(dev, sizeof(*q6asm), GFP_KERNEL);
	if (!q6asm)
		return -ENOMEM;

	FUNC4(adev->svc_id, &q6asm->ainfo);

	q6asm->dev = dev;
	q6asm->adev = adev;
	FUNC2(&q6asm->mem_wait);
	FUNC5(&q6asm->slock);
	FUNC0(dev, q6asm);

	return FUNC3(dev->of_node, NULL, NULL, dev);
}