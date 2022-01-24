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
struct nfs_fsinfo {int lease_time; } ;
struct nfs_client {int /*<<< orphan*/  cl_res_state; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  NFS_CS_CHECK_LEASE_TIME ; 
 unsigned long jiffies ; 
 int FUNC0 (struct nfs_client*,struct nfs_fsinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_client*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct nfs_client *clp)
{
	int status;
	struct nfs_fsinfo fsinfo;
	unsigned long now;

	if (!FUNC3(NFS_CS_CHECK_LEASE_TIME, &clp->cl_res_state)) {
		FUNC1(clp);
		return 0;
	}

	now = jiffies;
	status = FUNC0(clp, &fsinfo);
	if (status == 0) {
		FUNC2(clp, fsinfo.lease_time * HZ, now);
		FUNC1(clp);
	}

	return status;
}