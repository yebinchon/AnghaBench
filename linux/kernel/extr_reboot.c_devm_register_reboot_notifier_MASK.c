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
struct notifier_block {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_unregister_reboot_notifier ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct notifier_block**) ; 
 struct notifier_block** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct notifier_block**) ; 
 int FUNC3 (struct notifier_block*) ; 

int FUNC4(struct device *dev, struct notifier_block *nb)
{
	struct notifier_block **rcnb;
	int ret;

	rcnb = FUNC1(devm_unregister_reboot_notifier,
			    sizeof(*rcnb), GFP_KERNEL);
	if (!rcnb)
		return -ENOMEM;

	ret = FUNC3(nb);
	if (!ret) {
		*rcnb = nb;
		FUNC0(dev, rcnb);
	} else {
		FUNC2(rcnb);
	}

	return ret;
}