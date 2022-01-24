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
struct nfs_server {int dummy; } ;
struct nfs4_state {int /*<<< orphan*/  flags; int /*<<< orphan*/  inode; } ;
struct nfs4_exception {scalar_t__ retry; int /*<<< orphan*/  inode; } ;
struct file_lock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETLK ; 
 int NFS4ERR_DELAY ; 
 int /*<<< orphan*/  NFS_DELEGATED_STATE ; 
 int /*<<< orphan*/  NFS_LOCK_RECLAIM ; 
 struct nfs_server* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nfs4_state*,int /*<<< orphan*/ ,struct file_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_server*,int,struct nfs4_exception*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct nfs4_state *state, struct file_lock *request)
{
	struct nfs_server *server = FUNC0(state->inode);
	struct nfs4_exception exception = {
		.inode = state->inode,
	};
	int err;

	do {
		/* Cache the lock if possible... */
		if (FUNC3(NFS_DELEGATED_STATE, &state->flags) != 0)
			return 0;
		err = FUNC1(state, F_SETLK, request, NFS_LOCK_RECLAIM);
		if (err != -NFS4ERR_DELAY)
			break;
		FUNC2(server, err, &exception);
	} while (exception.retry);
	return err;
}