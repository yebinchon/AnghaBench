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
struct kernfs_node {int flags; void const* ns; char* name; int /*<<< orphan*/  hash; struct kernfs_node* parent; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int KERNFS_EMPTY_DIR ; 
 int /*<<< orphan*/  FUNC0 (struct kernfs_node*) ; 
 scalar_t__ FUNC1 (struct kernfs_node*,char const*,void const*) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct kernfs_node*) ; 
 int /*<<< orphan*/  kernfs_mutex ; 
 int /*<<< orphan*/  FUNC4 (char const*,void const*) ; 
 int /*<<< orphan*/  FUNC5 (struct kernfs_node*) ; 
 int /*<<< orphan*/  kernfs_rename_lock ; 
 int /*<<< orphan*/  FUNC6 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char*,char const*) ; 

int FUNC14(struct kernfs_node *kn, struct kernfs_node *new_parent,
		     const char *new_name, const void *new_ns)
{
	struct kernfs_node *old_parent;
	const char *old_name = NULL;
	int error;

	/* can't move or rename root */
	if (!kn->parent)
		return -EINVAL;

	FUNC9(&kernfs_mutex);

	error = -ENOENT;
	if (!FUNC0(kn) || !FUNC0(new_parent) ||
	    (new_parent->flags & KERNFS_EMPTY_DIR))
		goto out;

	error = 0;
	if ((kn->parent == new_parent) && (kn->ns == new_ns) &&
	    (FUNC13(kn->name, new_name) == 0))
		goto out;	/* nothing to rename */

	error = -EEXIST;
	if (FUNC1(new_parent, new_name, new_ns))
		goto out;

	/* rename kernfs_node */
	if (FUNC13(kn->name, new_name) != 0) {
		error = -ENOMEM;
		new_name = FUNC8(new_name, GFP_KERNEL);
		if (!new_name)
			goto out;
	} else {
		new_name = NULL;
	}

	/*
	 * Move to the appropriate place in the appropriate directories rbtree.
	 */
	FUNC6(kn);
	FUNC2(new_parent);

	/* rename_lock protects ->parent and ->name accessors */
	FUNC11(&kernfs_rename_lock);

	old_parent = kn->parent;
	kn->parent = new_parent;

	kn->ns = new_ns;
	if (new_name) {
		old_name = kn->name;
		kn->name = new_name;
	}

	FUNC12(&kernfs_rename_lock);

	kn->hash = FUNC4(kn->name, kn->ns);
	FUNC3(kn);

	FUNC5(old_parent);
	FUNC7(old_name);

	error = 0;
 out:
	FUNC10(&kernfs_mutex);
	return error;
}