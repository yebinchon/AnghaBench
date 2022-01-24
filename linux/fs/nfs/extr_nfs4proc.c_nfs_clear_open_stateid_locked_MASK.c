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
struct nfs4_state {int /*<<< orphan*/  inode; int /*<<< orphan*/  open_stateid; int /*<<< orphan*/  stateid; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;
typedef  int fmode_t ;

/* Variables and functions */
#define  FMODE_READ 129 
#define  FMODE_WRITE 128 
 int /*<<< orphan*/  NFS_DELEGATED_STATE ; 
 int /*<<< orphan*/  NFS_OPEN_STATE ; 
 int /*<<< orphan*/  NFS_O_RDONLY_STATE ; 
 int /*<<< orphan*/  NFS_O_RDWR_STATE ; 
 int /*<<< orphan*/  NFS_O_WRONLY_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs4_state*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct nfs4_state *state,
		nfs4_stateid *stateid, fmode_t fmode)
{
	FUNC0(NFS_O_RDWR_STATE, &state->flags);
	switch (fmode & (FMODE_READ|FMODE_WRITE)) {
	case FMODE_WRITE:
		FUNC0(NFS_O_RDONLY_STATE, &state->flags);
		break;
	case FMODE_READ:
		FUNC0(NFS_O_WRONLY_STATE, &state->flags);
		break;
	case 0:
		FUNC0(NFS_O_RDONLY_STATE, &state->flags);
		FUNC0(NFS_O_WRONLY_STATE, &state->flags);
		FUNC0(NFS_OPEN_STATE, &state->flags);
	}
	if (stateid == NULL)
		return;
	/* Handle OPEN+OPEN_DOWNGRADE races */
	if (FUNC3(stateid, &state->open_stateid) &&
	    !FUNC2(stateid, &state->open_stateid)) {
		FUNC4(state);
		goto out;
	}
	if (FUNC6(NFS_DELEGATED_STATE, &state->flags) == 0)
		FUNC1(&state->stateid, stateid);
	FUNC1(&state->open_stateid, stateid);
	FUNC7(state->inode, stateid, 0);
out:
	FUNC5(state);
}