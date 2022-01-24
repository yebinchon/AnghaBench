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
struct atmdev_ops {int dummy; } ;
struct atm_dev {int number; unsigned long flags; unsigned long stats; int /*<<< orphan*/  dev_list; int /*<<< orphan*/  refcnt; struct atmdev_ops const* ops; } ;

/* Variables and functions */
 struct atm_dev* FUNC0 (char const*) ; 
 struct atm_dev* FUNC1 (int) ; 
 int /*<<< orphan*/  atm_dev_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct atm_dev*) ; 
 int /*<<< orphan*/  atm_devs ; 
 int /*<<< orphan*/  FUNC3 (struct atm_dev*) ; 
 scalar_t__ FUNC4 (struct atm_dev*) ; 
 scalar_t__ FUNC5 (struct atm_dev*,struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 

struct atm_dev *FUNC13(const char *type, struct device *parent,
				 const struct atmdev_ops *ops, int number,
				 unsigned long *flags)
{
	struct atm_dev *dev, *inuse;

	dev = FUNC0(type);
	if (!dev) {
		FUNC11("no space for dev %s\n", type);
		return NULL;
	}
	FUNC9(&atm_dev_mutex);
	if (number != -1) {
		inuse = FUNC1(number);
		if (inuse) {
			FUNC2(inuse);
			FUNC10(&atm_dev_mutex);
			FUNC6(dev);
			return NULL;
		}
		dev->number = number;
	} else {
		dev->number = 0;
		while ((inuse = FUNC1(dev->number))) {
			FUNC2(inuse);
			dev->number++;
		}
	}

	dev->ops = ops;
	if (flags)
		dev->flags = *flags;
	else
		FUNC8(&dev->flags, 0, sizeof(dev->flags));
	FUNC8(&dev->stats, 0, sizeof(dev->stats));
	FUNC12(&dev->refcnt, 1);

	if (FUNC4(dev) < 0) {
		FUNC11("atm_proc_dev_register failed for dev %s\n", type);
		goto out_fail;
	}

	if (FUNC5(dev, parent) < 0) {
		FUNC11("atm_register_sysfs failed for dev %s\n", type);
		FUNC3(dev);
		goto out_fail;
	}

	FUNC7(&dev->dev_list, &atm_devs);

out:
	FUNC10(&atm_dev_mutex);
	return dev;

out_fail:
	FUNC6(dev);
	dev = NULL;
	goto out;
}