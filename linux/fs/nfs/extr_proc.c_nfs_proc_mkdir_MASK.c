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
struct rpc_message {TYPE_1__* rpc_resp; int /*<<< orphan*/ * rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct TYPE_2__ {int /*<<< orphan*/  fattr; int /*<<< orphan*/  fh; } ;
struct nfs_createdata {TYPE_1__ res; int /*<<< orphan*/  arg; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t NFSPROC_MKDIR ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 struct nfs_createdata* FUNC2 (struct inode*,struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_createdata*) ; 
 int FUNC4 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/ * nfs_procedures ; 
 int FUNC6 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct inode *dir, struct dentry *dentry, struct iattr *sattr)
{
	struct nfs_createdata *data;
	struct rpc_message msg = {
		.rpc_proc	= &nfs_procedures[NFSPROC_MKDIR],
	};
	int status = -ENOMEM;

	FUNC1("NFS call  mkdir %pd\n", dentry);
	data = FUNC2(dir, dentry, sattr);
	if (data == NULL)
		goto out;
	msg.rpc_argp = &data->arg;
	msg.rpc_resp = &data->res;

	status = FUNC6(FUNC0(dir), &msg, 0);
	FUNC5(dir);
	if (status == 0)
		status = FUNC4(dentry, data->res.fh, data->res.fattr, NULL);
	FUNC3(data);
out:
	FUNC1("NFS reply mkdir: %d\n", status);
	return status;
}