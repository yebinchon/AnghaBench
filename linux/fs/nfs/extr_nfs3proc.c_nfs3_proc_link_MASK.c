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
struct rpc_message {struct nfs3_linkres* rpc_resp; struct nfs3_linkargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct qstr {int name; int /*<<< orphan*/  len; } ;
struct nfs3_linkres {int /*<<< orphan*/ * fattr; int /*<<< orphan*/ * dir_attr; } ;
struct nfs3_linkargs {int toname; int /*<<< orphan*/  tolen; int /*<<< orphan*/  tofh; int /*<<< orphan*/  fromfh; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t NFS3PROC_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * nfs3_procedures ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct inode *inode, struct inode *dir, const struct qstr *name)
{
	struct nfs3_linkargs	arg = {
		.fromfh		= FUNC1(inode),
		.tofh		= FUNC1(dir),
		.toname		= name->name,
		.tolen		= name->len
	};
	struct nfs3_linkres	res;
	struct rpc_message msg = {
		.rpc_proc	= &nfs3_procedures[NFS3PROC_LINK],
		.rpc_argp	= &arg,
		.rpc_resp	= &res,
	};
	int status = -ENOMEM;

	FUNC2("NFS call  link %s\n", name->name);
	res.fattr = FUNC3();
	res.dir_attr = FUNC3();
	if (res.fattr == NULL || res.dir_attr == NULL)
		goto out;

	status = FUNC6(FUNC0(inode), &msg, 0);
	FUNC5(dir, res.dir_attr);
	FUNC5(inode, res.fattr);
out:
	FUNC4(res.dir_attr);
	FUNC4(res.fattr);
	FUNC2("NFS reply link: %d\n", status);
	return status;
}