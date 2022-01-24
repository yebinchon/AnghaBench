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
struct nfs4_state {TYPE_2__* owner; int /*<<< orphan*/  flags; int /*<<< orphan*/  seqlock; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_4__ {TYPE_1__* so_server; } ;
struct TYPE_3__ {int /*<<< orphan*/  nfs_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_STATE_RECLAIM_NOGRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nfs4_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct nfs4_state *state,
	nfs4_stateid *arg_stateid,
	nfs4_stateid *stateid, fmode_t fmode)
{
	FUNC4(&state->seqlock);
	/* Ignore, if the CLOSE argment doesn't match the current stateid */
	if (FUNC1(state, arg_stateid))
		FUNC2(state, stateid, fmode);
	FUNC5(&state->seqlock);
	if (FUNC3(NFS_STATE_RECLAIM_NOGRACE, &state->flags))
		FUNC0(state->owner->so_server->nfs_client);
}