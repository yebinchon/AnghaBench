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
struct mempolicy {unsigned short mode; unsigned short flags; int /*<<< orphan*/  refcnt; } ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct mempolicy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned short MPOL_DEFAULT ; 
 unsigned short MPOL_F_RELATIVE_NODES ; 
 unsigned short MPOL_F_STATIC_NODES ; 
 unsigned short MPOL_LOCAL ; 
 unsigned short MPOL_PREFERRED ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct mempolicy* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  policy_cache ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned short,unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mempolicy *FUNC7(unsigned short mode, unsigned short flags,
				  nodemask_t *nodes)
{
	struct mempolicy *policy;

	FUNC6("setting mode %d flags %d nodes[0] %lx\n",
		 mode, flags, nodes ? FUNC4(*nodes)[0] : NUMA_NO_NODE);

	if (mode == MPOL_DEFAULT) {
		if (nodes && !FUNC5(*nodes))
			return FUNC0(-EINVAL);
		return NULL;
	}
	FUNC1(!nodes);

	/*
	 * MPOL_PREFERRED cannot be used with MPOL_F_STATIC_NODES or
	 * MPOL_F_RELATIVE_NODES if the nodemask is empty (local allocation).
	 * All other modes require a valid pointer to a non-empty nodemask.
	 */
	if (mode == MPOL_PREFERRED) {
		if (FUNC5(*nodes)) {
			if (((flags & MPOL_F_STATIC_NODES) ||
			     (flags & MPOL_F_RELATIVE_NODES)))
				return FUNC0(-EINVAL);
		}
	} else if (mode == MPOL_LOCAL) {
		if (!FUNC5(*nodes) ||
		    (flags & MPOL_F_STATIC_NODES) ||
		    (flags & MPOL_F_RELATIVE_NODES))
			return FUNC0(-EINVAL);
		mode = MPOL_PREFERRED;
	} else if (FUNC5(*nodes))
		return FUNC0(-EINVAL);
	policy = FUNC3(policy_cache, GFP_KERNEL);
	if (!policy)
		return FUNC0(-ENOMEM);
	FUNC2(&policy->refcnt, 1);
	policy->mode = mode;
	policy->flags = flags;

	return policy;
}