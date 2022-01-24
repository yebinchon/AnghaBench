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
struct intel_sst_drv {int /*<<< orphan*/  sst_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  firmware_name; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct intel_sst_drv*,struct firmware const*) ; 

__attribute__((used)) static int FUNC5(struct intel_sst_drv *sst)
{
	int retval = 0;
	const struct firmware *fw;

	retval = FUNC3(&fw, sst->firmware_name, sst->dev);
	if (retval) {
		FUNC0(sst->dev, "request fw failed %d\n", retval);
		return retval;
	}
	if (fw == NULL) {
		FUNC0(sst->dev, "fw is returning as null\n");
		return -EINVAL;
	}
	FUNC1(&sst->sst_lock);
	retval = FUNC4(sst, fw);
	FUNC2(&sst->sst_lock);

	return retval;
}