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
struct device {struct device* parent; int /*<<< orphan*/ * class; } ;
struct atm_dev {int /*<<< orphan*/  number; int /*<<< orphan*/  type; struct device class_dev; } ;

/* Variables and functions */
 scalar_t__* atm_attrs ; 
 int /*<<< orphan*/  atm_class ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,scalar_t__) ; 

int FUNC6(struct atm_dev *adev, struct device *parent)
{
	struct device *cdev = &adev->class_dev;
	int i, j, err;

	cdev->class = &atm_class;
	cdev->parent = parent;
	FUNC0(cdev, adev);

	FUNC1(cdev, "%s%d", adev->type, adev->number);
	err = FUNC4(cdev);
	if (err < 0)
		return err;

	for (i = 0; atm_attrs[i]; i++) {
		err = FUNC2(cdev, atm_attrs[i]);
		if (err)
			goto err_out;
	}

	return 0;

err_out:
	for (j = 0; j < i; j++)
		FUNC5(cdev, atm_attrs[j]);
	FUNC3(cdev);
	return err;
}