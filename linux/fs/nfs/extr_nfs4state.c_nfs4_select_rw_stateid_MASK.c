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
struct nfs_lock_context {int dummy; } ;
struct nfs4_state {int /*<<< orphan*/  inode; } ;
struct cred {int dummy; } ;
struct TYPE_6__ {scalar_t__ seqid; } ;
typedef  TYPE_1__ nfs4_stateid ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  NFS_CAP_STATEID_NFSV41 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,struct cred const**) ; 
 int FUNC1 (TYPE_1__*,struct nfs4_state*,struct nfs_lock_context const*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,struct nfs4_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_state*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct nfs4_state *state,
		fmode_t fmode, const struct nfs_lock_context *l_ctx,
		nfs4_stateid *dst, const struct cred **cred)
{
	int ret;

	if (!FUNC3(state))
		return -EIO;
	if (cred != NULL)
		*cred = NULL;
	ret = FUNC1(dst, state, l_ctx);
	if (ret == -EIO)
		/* A lost lock - don't even consider delegations */
		goto out;
	/* returns true if delegation stateid found and copied */
	if (FUNC0(state->inode, fmode, dst, cred)) {
		ret = 0;
		goto out;
	}
	if (ret != -ENOENT)
		/* nfs4_copy_delegation_stateid() didn't over-write
		 * dst, so it still has the lock stateid which we now
		 * choose to use.
		 */
		goto out;
	ret = FUNC2(dst, state) ? 0 : -EAGAIN;
out:
	if (FUNC4(state->inode, NFS_CAP_STATEID_NFSV41))
		dst->seqid = 0;
	return ret;
}