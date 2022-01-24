#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ac97_controller {TYPE_1__* ops; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* warm_reset ) (struct ac97_controller*) ;} ;

/* Variables and functions */
 size_t ENODEV ; 
 int /*<<< orphan*/  ac97_controllers_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ac97_controller*) ; 
 struct ac97_controller* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, const char *buf,
				size_t len)
{
	struct ac97_controller *ac97_ctrl;

	if (!dev)
		return -ENODEV;

	FUNC0(&ac97_controllers_mutex);
	ac97_ctrl = FUNC3(dev);
	ac97_ctrl->ops->warm_reset(ac97_ctrl);
	FUNC1(&ac97_controllers_mutex);
	return len;
}