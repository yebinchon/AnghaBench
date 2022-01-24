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
struct nfs_inode {int /*<<< orphan*/  rwsem; } ;
struct nfs4_state_owner {int /*<<< orphan*/  so_delegreturn_mutex; } ;
struct nfs4_state {int /*<<< orphan*/  inode; int /*<<< orphan*/  flags; struct nfs4_state_owner* owner; } ;
struct file_lock {unsigned char fl_flags; } ;

/* Variables and functions */
 unsigned char FL_ACCESS ; 
 unsigned char FL_SLEEP ; 
 int /*<<< orphan*/  NFS_DELEGATED_STATE ; 
 struct nfs_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_LOCK_NEW ; 
 int FUNC1 (struct nfs4_state*,int,struct file_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct nfs4_state *state, int cmd, struct file_lock *request)
{
	struct nfs_inode *nfsi = FUNC0(state->inode);
	struct nfs4_state_owner *sp = state->owner;
	unsigned char fl_flags = request->fl_flags;
	int status;

	request->fl_flags |= FL_ACCESS;
	status = FUNC3(state->inode, request);
	if (status < 0)
		goto out;
	FUNC4(&sp->so_delegreturn_mutex);
	FUNC2(&nfsi->rwsem);
	if (FUNC6(NFS_DELEGATED_STATE, &state->flags)) {
		/* Yes: cache locks! */
		/* ...but avoid races with delegation recall... */
		request->fl_flags = fl_flags & ~FL_SLEEP;
		status = FUNC3(state->inode, request);
		FUNC7(&nfsi->rwsem);
		FUNC5(&sp->so_delegreturn_mutex);
		goto out;
	}
	FUNC7(&nfsi->rwsem);
	FUNC5(&sp->so_delegreturn_mutex);
	status = FUNC1(state, cmd, request, NFS_LOCK_NEW);
out:
	request->fl_flags = fl_flags;
	return status;
}