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
 int /*<<< orphan*/  NFS4CLNT_LEASE_EXPIRED ; 
 int /*<<< orphan*/  NFS4CLNT_PURGE_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nfs_client*) ; 
 int FUNC2 (struct nfs_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct nfs_client *clp)
{
	int status;

	status = FUNC1(clp);
	if (status < 0)
		return FUNC2(clp, status);
	FUNC0(NFS4CLNT_PURGE_STATE, &clp->cl_state);
	FUNC4(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state);
	FUNC3(clp);
	return 0;
}