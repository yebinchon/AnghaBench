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
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;
struct atm_dev {int /*<<< orphan*/  number; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atm_dev* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *cdev, struct kobj_uevent_env *env)
{
	struct atm_dev *adev;

	if (!cdev)
		return -ENODEV;

	adev = FUNC1(cdev);
	if (!adev)
		return -ENODEV;

	if (FUNC0(env, "NAME=%s%d", adev->type, adev->number))
		return -ENOMEM;

	return 0;
}