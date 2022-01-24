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
struct super_block {int /*<<< orphan*/  s_root; int /*<<< orphan*/ * s_op; } ;
struct kernfs_node {int /*<<< orphan*/  name; int /*<<< orphan*/  parent; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EINVAL ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (int) ; 
 struct dentry* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 struct kernfs_node* FUNC6 (struct kernfs_node*,struct kernfs_node*) ; 
 int /*<<< orphan*/  kernfs_sops ; 
 struct dentry* FUNC7 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

struct dentry *FUNC9(struct kernfs_node *kn,
				  struct super_block *sb)
{
	struct dentry *dentry;
	struct kernfs_node *knparent = NULL;

	FUNC0(sb->s_op != &kernfs_sops);

	dentry = FUNC4(sb->s_root);

	/* Check if this is the root kernfs_node */
	if (!kn->parent)
		return dentry;

	knparent = FUNC6(kn, NULL);
	if (FUNC3(!knparent)) {
		FUNC5(dentry);
		return FUNC1(-EINVAL);
	}

	do {
		struct dentry *dtmp;
		struct kernfs_node *kntmp;

		if (kn == knparent)
			return dentry;
		kntmp = FUNC6(kn, knparent);
		if (FUNC3(!kntmp)) {
			FUNC5(dentry);
			return FUNC1(-EINVAL);
		}
		dtmp = FUNC7(kntmp->name, dentry,
					       FUNC8(kntmp->name));
		FUNC5(dentry);
		if (FUNC2(dtmp))
			return dtmp;
		knparent = kntmp;
		dentry = dtmp;
	} while (true);
}