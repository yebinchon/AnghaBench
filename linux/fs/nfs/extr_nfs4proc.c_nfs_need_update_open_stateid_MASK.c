#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nfs4_state {int /*<<< orphan*/  open_stateid; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {scalar_t__ seqid; } ;
typedef  TYPE_1__ nfs4_stateid ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_OPEN_STATE ; 
 int /*<<< orphan*/  NFS_STATE_CHANGE_WAIT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_state*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(struct nfs4_state *state,
		const nfs4_stateid *stateid)
{
	if (FUNC6(NFS_OPEN_STATE, &state->flags) == 0 ||
	    !FUNC2(stateid, &state->open_stateid)) {
		if (stateid->seqid == FUNC0(1))
			FUNC4(state);
		else
			FUNC5(NFS_STATE_CHANGE_WAIT, &state->flags);
		return true;
	}

	if (FUNC1(stateid, &state->open_stateid)) {
		FUNC3(state, stateid);
		return true;
	}
	return false;
}