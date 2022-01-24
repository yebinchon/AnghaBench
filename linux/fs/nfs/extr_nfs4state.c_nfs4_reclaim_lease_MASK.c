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
struct nfs_client {int /*<<< orphan*/  cl_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4CLNT_CHECK_LEASE ; 
 int /*<<< orphan*/  NFS4CLNT_LEASE_EXPIRED ; 
 int /*<<< orphan*/  NFS4CLNT_RECLAIM_NOGRACE ; 
 int /*<<< orphan*/  NFS4CLNT_RECLAIM_REBOOT ; 
 int /*<<< orphan*/  NFS4CLNT_SERVER_SCOPE_MISMATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nfs_client*) ; 
 int FUNC2 (struct nfs_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct nfs_client *clp)
{
	int status;

	status = FUNC1(clp);
	if (status < 0)
		return FUNC2(clp, status);
	if (FUNC5(NFS4CLNT_SERVER_SCOPE_MISMATCH, &clp->cl_state))
		FUNC3(clp);
	if (!FUNC6(NFS4CLNT_RECLAIM_NOGRACE, &clp->cl_state))
		FUNC4(NFS4CLNT_RECLAIM_REBOOT, &clp->cl_state);
	FUNC0(NFS4CLNT_CHECK_LEASE, &clp->cl_state);
	FUNC0(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state);
	return 0;
}