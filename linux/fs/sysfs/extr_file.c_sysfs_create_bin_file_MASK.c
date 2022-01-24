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
struct kobject {int /*<<< orphan*/  sd; } ;
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;
struct bin_attribute {TYPE_1__ attr; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kobject*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct kobject *kobj,
			  const struct bin_attribute *attr)
{
	kuid_t uid;
	kgid_t gid;

	if (FUNC0(!kobj || !kobj->sd || !attr))
		return -EINVAL;

	FUNC1(kobj, &uid, &gid);
	return FUNC2(kobj->sd, &attr->attr, true,
				      attr->attr.mode, uid, gid, NULL);
}