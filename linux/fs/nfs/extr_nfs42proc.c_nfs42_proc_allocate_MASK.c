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
struct rpc_message {int /*<<< orphan*/ * rpc_proc; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 size_t NFSPROC4_CLNT_ALLOCATE ; 
 int /*<<< orphan*/  NFS_CAP_ALLOCATE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct rpc_message*,struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC6(struct file *filep, loff_t offset, loff_t len)
{
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_ALLOCATE],
	};
	struct inode *inode = FUNC1(filep);
	int err;

	if (!FUNC5(inode, NFS_CAP_ALLOCATE))
		return -EOPNOTSUPP;

	FUNC2(inode);

	err = FUNC4(&msg, filep, offset, len);
	if (err == -EOPNOTSUPP)
		FUNC0(inode)->caps &= ~NFS_CAP_ALLOCATE;

	FUNC3(inode);
	return err;
}