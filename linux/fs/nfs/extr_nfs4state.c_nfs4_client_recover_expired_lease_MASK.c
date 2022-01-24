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
 int EIO ; 
 int /*<<< orphan*/  NFS4CLNT_CHECK_LEASE ; 
 int /*<<< orphan*/  NFS4CLNT_LEASE_EXPIRED ; 
 unsigned int NFS4_MAX_LOOP_ON_RECOVER ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_client*) ; 
 int FUNC1 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct nfs_client *clp)
{
	unsigned int loop;
	int ret;

	for (loop = NFS4_MAX_LOOP_ON_RECOVER; loop != 0; loop--) {
		ret = FUNC1(clp);
		if (ret != 0)
			break;
		if (!FUNC2(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state) &&
		    !FUNC2(NFS4CLNT_CHECK_LEASE,&clp->cl_state))
			break;
		FUNC0(clp);
		ret = -EIO;
	}
	return ret;
}