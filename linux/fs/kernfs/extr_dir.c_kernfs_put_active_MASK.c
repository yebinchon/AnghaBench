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
struct kernfs_node {int /*<<< orphan*/  active; int /*<<< orphan*/  dep_map; } ;
struct TYPE_2__ {int /*<<< orphan*/  deactivate_waitq; } ;

/* Variables and functions */
 int KN_DEACTIVATED_BIAS ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct kernfs_node*) ; 
 TYPE_1__* FUNC2 (struct kernfs_node*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct kernfs_node *kn)
{
	int v;

	if (FUNC5(!kn))
		return;

	if (FUNC1(kn))
		FUNC4(&kn->dep_map, 1, _RET_IP_);
	v = FUNC0(&kn->active);
	if (FUNC3(v != KN_DEACTIVATED_BIAS))
		return;

	FUNC6(&FUNC2(kn)->deactivate_waitq);
}