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
struct kernfs_node {int flags; int /*<<< orphan*/  active; int /*<<< orphan*/  rb; scalar_t__ parent; } ;

/* Variables and functions */
 int KERNFS_ACTIVATED ; 
 scalar_t__ KN_DEACTIVATED_BIAS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kernfs_mutex ; 
 struct kernfs_node* FUNC4 (struct kernfs_node*,struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct kernfs_node *kn)
{
	struct kernfs_node *pos;

	FUNC5(&kernfs_mutex);

	pos = NULL;
	while ((pos = FUNC4(pos, kn))) {
		if (!pos || (pos->flags & KERNFS_ACTIVATED))
			continue;

		FUNC1(pos->parent && FUNC0(&pos->rb));
		FUNC1(FUNC2(&pos->active) != KN_DEACTIVATED_BIAS);

		FUNC3(KN_DEACTIVATED_BIAS, &pos->active);
		pos->flags |= KERNFS_ACTIVATED;
	}

	FUNC6(&kernfs_mutex);
}