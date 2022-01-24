#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kobject {struct kernfs_node* sd; } ;
struct TYPE_4__ {TYPE_1__* target_kn; } ;
struct kernfs_node {void* ns; TYPE_2__ symlink; } ;
struct TYPE_3__ {struct kobject* priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ KERNFS_LINK ; 
 struct kernfs_node* FUNC0 (struct kernfs_node*,char const*,void const*) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int FUNC2 (struct kernfs_node*,struct kernfs_node*,char const*,void const*) ; 
 scalar_t__ FUNC3 (struct kernfs_node*) ; 
 struct kernfs_node* sysfs_root_kn ; 

int FUNC4(struct kobject *kobj, struct kobject *targ,
			 const char *old, const char *new, const void *new_ns)
{
	struct kernfs_node *parent, *kn = NULL;
	const void *old_ns = NULL;
	int result;

	if (!kobj)
		parent = sysfs_root_kn;
	else
		parent = kobj->sd;

	if (targ->sd)
		old_ns = targ->sd->ns;

	result = -ENOENT;
	kn = FUNC0(parent, old, old_ns);
	if (!kn)
		goto out;

	result = -EINVAL;
	if (FUNC3(kn) != KERNFS_LINK)
		goto out;
	if (kn->symlink.target_kn->priv != targ)
		goto out;

	result = FUNC2(kn, parent, new, new_ns);

out:
	FUNC1(kn);
	return result;
}