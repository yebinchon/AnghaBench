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
struct nfs_client {int /*<<< orphan*/  cl_state; } ;
struct nfs4_state {TYPE_1__* owner; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  so_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4CLNT_RECLAIM_REBOOT ; 
 int /*<<< orphan*/  NFS_OWNER_RECLAIM_REBOOT ; 
 int /*<<< orphan*/  NFS_STATE_RECLAIM_NOGRACE ; 
 int /*<<< orphan*/  NFS_STATE_RECLAIM_REBOOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct nfs_client *clp, struct nfs4_state *state)
{

	if (!FUNC1(state))
		return 0;
	FUNC2(NFS_STATE_RECLAIM_REBOOT, &state->flags);
	/* Don't recover state that expired before the reboot */
	if (FUNC3(NFS_STATE_RECLAIM_NOGRACE, &state->flags)) {
		FUNC0(NFS_STATE_RECLAIM_REBOOT, &state->flags);
		return 0;
	}
	FUNC2(NFS_OWNER_RECLAIM_REBOOT, &state->owner->so_flags);
	FUNC2(NFS4CLNT_RECLAIM_REBOOT, &clp->cl_state);
	return 1;
}