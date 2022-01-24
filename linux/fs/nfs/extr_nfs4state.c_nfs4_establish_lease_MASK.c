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
struct nfs_client {TYPE_1__* cl_mvops; } ;
struct nfs4_state_recovery_ops {int (* establish_clid ) (struct nfs_client*,struct cred const*) ;} ;
struct cred {int dummy; } ;
struct TYPE_2__ {struct nfs4_state_recovery_ops* reboot_recovery_ops; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct nfs_client*) ; 
 struct cred* FUNC1 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct cred const*) ; 
 int FUNC4 (struct nfs_client*,struct cred const*) ; 

__attribute__((used)) static int FUNC5(struct nfs_client *clp)
{
	const struct cred *cred;
	const struct nfs4_state_recovery_ops *ops =
		clp->cl_mvops->reboot_recovery_ops;
	int status;

	status = FUNC0(clp);
	if (status != 0)
		return status;
	cred = FUNC1(clp);
	if (cred == NULL)
		return -ENOENT;
	status = ops->establish_clid(clp, cred);
	FUNC3(cred);
	if (status != 0)
		return status;
	FUNC2(clp);
	return 0;
}