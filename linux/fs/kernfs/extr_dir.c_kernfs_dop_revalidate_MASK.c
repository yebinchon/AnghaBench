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
struct kernfs_node {scalar_t__ ns; struct kernfs_node* parent; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_sb; TYPE_1__ d_name; struct dentry* d_parent; } ;
struct TYPE_4__ {scalar_t__ ns; } ;

/* Variables and functions */
 int ECHILD ; 
 unsigned int LOOKUP_RCU ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC2 (struct dentry*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernfs_mutex ; 
 scalar_t__ FUNC4 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dentry *dentry, unsigned int flags)
{
	struct kernfs_node *kn;

	if (flags & LOOKUP_RCU)
		return -ECHILD;

	/* Always perform fresh lookup for negatives */
	if (FUNC0(dentry))
		goto out_bad_unlocked;

	kn = FUNC2(dentry);
	FUNC5(&kernfs_mutex);

	/* The kernfs node has been deactivated */
	if (!FUNC1(kn))
		goto out_bad;

	/* The kernfs node has been moved? */
	if (FUNC2(dentry->d_parent) != kn->parent)
		goto out_bad;

	/* The kernfs node has been renamed */
	if (FUNC7(dentry->d_name.name, kn->name) != 0)
		goto out_bad;

	/* The kernfs node has been moved to a different namespace */
	if (kn->parent && FUNC4(kn->parent) &&
	    FUNC3(dentry->d_sb)->ns != kn->ns)
		goto out_bad;

	FUNC6(&kernfs_mutex);
	return 1;
out_bad:
	FUNC6(&kernfs_mutex);
out_bad_unlocked:
	return 0;
}