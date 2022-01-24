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
struct nfs_net {int /*<<< orphan*/  nfs_client_lock; } ;
struct nfs_client {scalar_t__ rpc_ops; scalar_t__ cl_minorversion; scalar_t__ cl_cons_state; scalar_t__ cl_clientid; int /*<<< orphan*/  cl_count; } ;

/* Variables and functions */
 scalar_t__ NFS_CS_READY ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_client*,struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_client*) ; 
 int FUNC2 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct nfs_client  *pos,  struct nfs_client *new,
			     struct nfs_client **prev, struct nfs_net *nn)
{
	int status;

	if (pos->rpc_ops != new->rpc_ops)
		return 1;

	if (pos->cl_minorversion != new->cl_minorversion)
		return 1;

	/* If "pos" isn't marked ready, we can't trust the
	 * remaining fields in "pos", especially the client
	 * ID and serverowner fields.  Wait for CREATE_SESSION
	 * to finish. */
	if (pos->cl_cons_state > NFS_CS_READY) {
		FUNC3(&pos->cl_count);
		FUNC5(&nn->nfs_client_lock);

		FUNC1(*prev);
		*prev = pos;

		status = FUNC2(pos);
		FUNC4(&nn->nfs_client_lock);

		if (status < 0)
			return status;
	}

	if (pos->cl_cons_state != NFS_CS_READY)
		return 1;

	if (pos->cl_clientid != new->cl_clientid)
		return 1;

	/* NFSv4.1 always uses the uniform string, however someone
	 * might switch the uniquifier string on us.
	 */
	if (!FUNC0(pos, new))
		return 1;

	return 0;
}