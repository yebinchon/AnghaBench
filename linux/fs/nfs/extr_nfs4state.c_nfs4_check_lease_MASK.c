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
struct nfs_client {int /*<<< orphan*/  cl_state; TYPE_1__* cl_mvops; } ;
struct nfs4_state_maintenance_ops {int (* renew_lease ) (struct nfs_client*,struct cred const*) ;struct cred* (* get_state_renewal_cred ) (struct nfs_client*) ;} ;
struct cred {int dummy; } ;
struct TYPE_2__ {struct nfs4_state_maintenance_ops* state_renewal_ops; } ;

/* Variables and functions */
 int ENOKEY ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  NFS4CLNT_CHECK_LEASE ; 
 int /*<<< orphan*/  NFS4CLNT_LEASE_EXPIRED ; 
 struct cred* FUNC0 (struct nfs_client*) ; 
 int FUNC1 (struct nfs_client*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cred* FUNC4 (struct nfs_client*) ; 
 int FUNC5 (struct nfs_client*,struct cred const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct nfs_client *clp)
{
	const struct cred *cred;
	const struct nfs4_state_maintenance_ops *ops =
		clp->cl_mvops->state_renewal_ops;
	int status;

	/* Is the client already known to have an expired lease? */
	if (FUNC6(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state))
		return 0;
	cred = ops->get_state_renewal_cred(clp);
	if (cred == NULL) {
		cred = FUNC0(clp);
		status = -ENOKEY;
		if (cred == NULL)
			goto out;
	}
	status = ops->renew_lease(clp, cred);
	FUNC2(cred);
	if (status == -ETIMEDOUT) {
		FUNC3(NFS4CLNT_CHECK_LEASE, &clp->cl_state);
		return 0;
	}
out:
	return FUNC1(clp, status);
}