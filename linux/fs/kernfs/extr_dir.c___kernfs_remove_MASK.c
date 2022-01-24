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
struct kernfs_node {int flags; TYPE_1__* parent; int /*<<< orphan*/  active; int /*<<< orphan*/  name; int /*<<< orphan*/  rb; } ;
struct kernfs_iattrs {int /*<<< orphan*/  ia_ctime; int /*<<< orphan*/  ia_mtime; } ;
struct TYPE_2__ {struct kernfs_iattrs* iattr; } ;

/* Variables and functions */
 int KERNFS_ACTIVATED ; 
 scalar_t__ KN_DEACTIVATED_BIAS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC7 (struct kernfs_node*) ; 
 int /*<<< orphan*/  kernfs_mutex ; 
 struct kernfs_node* FUNC8 (struct kernfs_node*,struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct kernfs_node*) ; 
 scalar_t__ FUNC10 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct kernfs_node *kn)
{
	struct kernfs_node *pos;

	FUNC12(&kernfs_mutex);

	/*
	 * Short-circuit if non-root @kn has already finished removal.
	 * This is for kernfs_remove_self() which plays with active ref
	 * after removal.
	 */
	if (!kn || (kn->parent && FUNC0(&kn->rb)))
		return;

	FUNC13("kernfs %s: removing\n", kn->name);

	/* prevent any new usage under @kn by deactivating all nodes */
	pos = NULL;
	while ((pos = FUNC8(pos, kn)))
		if (FUNC4(pos))
			FUNC2(KN_DEACTIVATED_BIAS, &pos->active);

	/* deactivate and unlink the subtree node-by-node */
	do {
		pos = FUNC7(kn);

		/*
		 * kernfs_drain() drops kernfs_mutex temporarily and @pos's
		 * base ref could have been put by someone else by the time
		 * the function returns.  Make sure it doesn't go away
		 * underneath us.
		 */
		FUNC6(pos);

		/*
		 * Drain iff @kn was activated.  This avoids draining and
		 * its lockdep annotations for nodes which have never been
		 * activated and allows embedding kernfs_remove() in create
		 * error paths without worrying about draining.
		 */
		if (kn->flags & KERNFS_ACTIVATED)
			FUNC5(pos);
		else
			FUNC1(FUNC3(&kn->active) != KN_DEACTIVATED_BIAS);

		/*
		 * kernfs_unlink_sibling() succeeds once per node.  Use it
		 * to decide who's responsible for cleanups.
		 */
		if (!pos->parent || FUNC10(pos)) {
			struct kernfs_iattrs *ps_iattr =
				pos->parent ? pos->parent->iattr : NULL;

			/* update timestamps on the parent */
			if (ps_iattr) {
				FUNC11(&ps_iattr->ia_ctime);
				ps_iattr->ia_mtime = ps_iattr->ia_ctime;
			}

			FUNC9(pos);
		}

		FUNC9(pos);
	} while (pos != kn);
}