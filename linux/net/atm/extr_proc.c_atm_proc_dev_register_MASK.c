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
struct atm_dev {int /*<<< orphan*/  proc_name; int /*<<< orphan*/  proc_entry; int /*<<< orphan*/  number; int /*<<< orphan*/  type; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  proc_read; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  atm_proc_root ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_atm_dev_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct atm_dev*) ; 

int FUNC3(struct atm_dev *dev)
{
	int error;

	/* No proc info */
	if (!dev->ops->proc_read)
		return 0;

	error = -ENOMEM;
	dev->proc_name = FUNC0(GFP_KERNEL, "%s:%d", dev->type, dev->number);
	if (!dev->proc_name)
		goto err_out;

	dev->proc_entry = FUNC2(dev->proc_name, 0, atm_proc_root,
					   &proc_atm_dev_ops, dev);
	if (!dev->proc_entry)
		goto err_free_name;
	return 0;

err_free_name:
	FUNC1(dev->proc_name);
err_out:
	return error;
}