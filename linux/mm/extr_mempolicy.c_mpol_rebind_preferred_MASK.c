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
struct TYPE_4__ {int /*<<< orphan*/  cpuset_mems_allowed; int /*<<< orphan*/  user_nodemask; } ;
struct TYPE_3__ {int preferred_node; } ;
struct mempolicy {int flags; TYPE_2__ w; TYPE_1__ v; } ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int MPOL_F_LOCAL ; 
 int MPOL_F_RELATIVE_NODES ; 
 int MPOL_F_STATIC_NODES ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/  const) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC4(struct mempolicy *pol,
						const nodemask_t *nodes)
{
	nodemask_t tmp;

	if (pol->flags & MPOL_F_STATIC_NODES) {
		int node = FUNC0(pol->w.user_nodemask);

		if (FUNC2(node, *nodes)) {
			pol->v.preferred_node = node;
			pol->flags &= ~MPOL_F_LOCAL;
		} else
			pol->flags |= MPOL_F_LOCAL;
	} else if (pol->flags & MPOL_F_RELATIVE_NODES) {
		FUNC1(&tmp, &pol->w.user_nodemask, nodes);
		pol->v.preferred_node = FUNC0(tmp);
	} else if (!(pol->flags & MPOL_F_LOCAL)) {
		pol->v.preferred_node = FUNC3(pol->v.preferred_node,
						   pol->w.cpuset_mems_allowed,
						   *nodes);
		pol->w.cpuset_mems_allowed = *nodes;
	}
}