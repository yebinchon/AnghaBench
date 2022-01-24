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
struct TYPE_2__ {int /*<<< orphan*/  nodes; int /*<<< orphan*/  preferred_node; } ;
struct mempolicy {int flags; unsigned short mode; TYPE_1__ v; } ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
#define  MPOL_BIND 131 
#define  MPOL_DEFAULT 130 
 unsigned short MPOL_F_LOCAL ; 
 int MPOL_F_MORON ; 
 unsigned short MPOL_F_RELATIVE_NODES ; 
 unsigned short MPOL_F_STATIC_NODES ; 
#define  MPOL_INTERLEAVE 129 
 unsigned short MPOL_LOCAL ; 
 unsigned short MPOL_MODE_FLAGS ; 
#define  MPOL_PREFERRED 128 
 int /*<<< orphan*/  NODE_MASK_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mempolicy default_policy ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char** policy_modes ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,...) ; 

void FUNC6(char *buffer, int maxlen, struct mempolicy *pol)
{
	char *p = buffer;
	nodemask_t nodes = NODE_MASK_NONE;
	unsigned short mode = MPOL_DEFAULT;
	unsigned short flags = 0;

	if (pol && pol != &default_policy && !(pol->flags & MPOL_F_MORON)) {
		mode = pol->mode;
		flags = pol->flags;
	}

	switch (mode) {
	case MPOL_DEFAULT:
		break;
	case MPOL_PREFERRED:
		if (flags & MPOL_F_LOCAL)
			mode = MPOL_LOCAL;
		else
			FUNC1(pol->v.preferred_node, nodes);
		break;
	case MPOL_BIND:
	case MPOL_INTERLEAVE:
		nodes = pol->v.nodes;
		break;
	default:
		FUNC0(1);
		FUNC5(p, maxlen, "unknown");
		return;
	}

	p += FUNC5(p, maxlen, "%s", policy_modes[mode]);

	if (flags & MPOL_MODE_FLAGS) {
		p += FUNC5(p, buffer + maxlen - p, "=");

		/*
		 * Currently, the only defined flags are mutually exclusive
		 */
		if (flags & MPOL_F_STATIC_NODES)
			p += FUNC5(p, buffer + maxlen - p, "static");
		else if (flags & MPOL_F_RELATIVE_NODES)
			p += FUNC5(p, buffer + maxlen - p, "relative");
	}

	if (!FUNC3(nodes))
		p += FUNC4(p, buffer + maxlen - p, ":%*pbl",
			       FUNC2(&nodes));
}