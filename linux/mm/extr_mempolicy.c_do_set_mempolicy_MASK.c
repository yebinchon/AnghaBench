#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mempolicy {scalar_t__ mode; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
struct TYPE_4__ {scalar_t__ il_prev; struct mempolicy* mempolicy; } ;

/* Variables and functions */
 long ENOMEM ; 
 scalar_t__ FUNC0 (struct mempolicy*) ; 
 scalar_t__ MAX_NUMNODES ; 
 scalar_t__ MPOL_INTERLEAVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mempolicy*) ; 
 TYPE_1__* current ; 
 struct mempolicy* FUNC4 (unsigned short,unsigned short,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mempolicy*) ; 
 int FUNC6 (struct mempolicy*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scratch ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static long FUNC9(unsigned short mode, unsigned short flags,
			     nodemask_t *nodes)
{
	struct mempolicy *new, *old;
	FUNC1(scratch);
	int ret;

	if (!scratch)
		return -ENOMEM;

	new = FUNC4(mode, flags, nodes);
	if (FUNC0(new)) {
		ret = FUNC3(new);
		goto out;
	}

	FUNC7(current);
	ret = FUNC6(new, nodes, scratch);
	if (ret) {
		FUNC8(current);
		FUNC5(new);
		goto out;
	}
	old = current->mempolicy;
	current->mempolicy = new;
	if (new && new->mode == MPOL_INTERLEAVE)
		current->il_prev = MAX_NUMNODES-1;
	FUNC8(current);
	FUNC5(old);
	ret = 0;
out:
	FUNC2(scratch);
	return ret;
}