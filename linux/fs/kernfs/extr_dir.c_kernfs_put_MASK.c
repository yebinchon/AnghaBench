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
struct kernfs_root {int /*<<< orphan*/  ino_idr; } ;
struct TYPE_4__ {int /*<<< orphan*/  ino; } ;
struct TYPE_3__ {struct kernfs_node* target_kn; } ;
struct kernfs_node {char* name; int /*<<< orphan*/  count; TYPE_2__ id; struct kernfs_node* iattr; int /*<<< orphan*/  xattrs; TYPE_1__ symlink; int /*<<< orphan*/  active; struct kernfs_node* parent; } ;

/* Variables and functions */
 scalar_t__ KERNFS_LINK ; 
 scalar_t__ KN_DEACTIVATED_BIAS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernfs_iattrs_cache ; 
 int /*<<< orphan*/  kernfs_idr_lock ; 
 int /*<<< orphan*/  kernfs_node_cache ; 
 struct kernfs_root* FUNC5 (struct kernfs_node*) ; 
 scalar_t__ FUNC6 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct kernfs_root*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct kernfs_node *kn)
{
	struct kernfs_node *parent;
	struct kernfs_root *root;

	/*
	 * kernfs_node is freed with ->count 0, kernfs_find_and_get_node_by_ino
	 * depends on this to filter reused stale node
	 */
	if (!kn || !FUNC1(&kn->count))
		return;
	root = FUNC5(kn);
 repeat:
	/*
	 * Moving/renaming is always done while holding reference.
	 * kn->parent won't change beneath us.
	 */
	parent = kn->parent;

	FUNC0(FUNC2(&kn->active) != KN_DEACTIVATED_BIAS,
		  "kernfs_put: %s/%s: released with incorrect active_ref %d\n",
		  parent ? parent->name : "", kn->name, FUNC2(&kn->active));

	if (FUNC6(kn) == KERNFS_LINK)
		FUNC13(kn->symlink.target_kn);

	FUNC8(kn->name);

	if (kn->iattr) {
		FUNC10(&kn->iattr->xattrs);
		FUNC9(kernfs_iattrs_cache, kn->iattr);
	}
	FUNC11(&kernfs_idr_lock);
	FUNC4(&root->ino_idr, kn->id.ino);
	FUNC12(&kernfs_idr_lock);
	FUNC9(kernfs_node_cache, kn);

	kn = parent;
	if (kn) {
		if (FUNC1(&kn->count))
			goto repeat;
	} else {
		/* just released the root kn, free @root too */
		FUNC3(&root->ino_idr);
		FUNC7(root);
	}
}