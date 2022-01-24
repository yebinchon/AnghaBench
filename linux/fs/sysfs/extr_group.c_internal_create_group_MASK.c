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
struct kobject {struct kernfs_node* sd; int /*<<< orphan*/  name; } ;
struct kernfs_node {int dummy; } ;
struct attribute_group {scalar_t__ name; int /*<<< orphan*/  bin_attrs; int /*<<< orphan*/  attrs; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct kernfs_node*) ; 
 int FUNC1 (struct kernfs_node*) ; 
 int S_IRUGO ; 
 int S_IRWXU ; 
 int S_IXUGO ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct kernfs_node*,struct kobject*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct attribute_group const*,int) ; 
 struct kernfs_node* FUNC5 (struct kernfs_node*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kobject*,int /*<<< orphan*/ *) ; 
 struct kernfs_node* FUNC6 (struct kernfs_node*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct kobject*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct kernfs_node*,scalar_t__) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct kobject *kobj, int update,
				 const struct attribute_group *grp)
{
	struct kernfs_node *kn;
	kuid_t uid;
	kgid_t gid;
	int error;

	if (FUNC3(!kobj || (!update && !kobj->sd)))
		return -EINVAL;

	/* Updates may happen before the object has been instantiated */
	if (FUNC13(update && !kobj->sd))
		return -EINVAL;
	if (!grp->attrs && !grp->bin_attrs) {
		FUNC2(1, "sysfs: (bin_)attrs not set by subsystem for group: %s/%s\n",
			kobj->name, grp->name ?: "");
		return -EINVAL;
	}
	FUNC10(kobj, &uid, &gid);
	if (grp->name) {
		if (update) {
			kn = FUNC6(kobj->sd, grp->name);
			if (!kn) {
				FUNC11("Can't update unknown attr grp name: %s/%s\n",
					kobj->name, grp->name);
				return -EINVAL;
			}
		} else {
			kn = FUNC5(kobj->sd, grp->name,
						  S_IRWXU | S_IRUGO | S_IXUGO,
						  uid, gid, kobj, NULL);
			if (FUNC0(kn)) {
				if (FUNC1(kn) == -EEXIST)
					FUNC12(kobj->sd, grp->name);
				return FUNC1(kn);
			}
		}
	} else
		kn = kobj->sd;
	FUNC7(kn);
	error = FUNC4(kn, kobj, uid, gid, grp, update);
	if (error) {
		if (grp->name)
			FUNC9(kn);
	}
	FUNC8(kn);

	if (grp->name && update)
		FUNC8(kn);

	return error;
}