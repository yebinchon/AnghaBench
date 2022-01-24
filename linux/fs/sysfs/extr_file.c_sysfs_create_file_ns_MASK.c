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
struct kobject {int /*<<< orphan*/  sd; } ;
struct attribute {int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kobject*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct attribute const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 

int FUNC3(struct kobject *kobj, const struct attribute *attr,
			 const void *ns)
{
	kuid_t uid;
	kgid_t gid;

	if (FUNC0(!kobj || !kobj->sd || !attr))
		return -EINVAL;

	FUNC1(kobj, &uid, &gid);
	return FUNC2(kobj->sd, attr, false, attr->mode,
				      uid, gid, ns);

}