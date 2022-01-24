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
struct nfs_server {int /*<<< orphan*/  mig_status; struct nfs_client* nfs_client; } ;
struct nfs_client {int dummy; } ;
struct nfs4_exception {int retry; scalar_t__ recovering; int /*<<< orphan*/  interruptible; int /*<<< orphan*/  timeout; scalar_t__ delay; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NFS_MIG_FAILED ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nfs_server*,int,struct nfs4_exception*) ; 
 int FUNC2 (struct nfs_client*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct nfs_server *server, int errorcode, struct nfs4_exception *exception)
{
	struct nfs_client *clp = server->nfs_client;
	int ret;

	ret = FUNC1(server, errorcode, exception);
	if (exception->delay) {
		ret = FUNC0(&exception->timeout,
				exception->interruptible);
		goto out_retry;
	}
	if (exception->recovering) {
		ret = FUNC2(clp);
		if (FUNC3(NFS_MIG_FAILED, &server->mig_status))
			return -EIO;
		goto out_retry;
	}
	return ret;
out_retry:
	if (ret == 0)
		exception->retry = 1;
	return ret;
}