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
typedef  scalar_t__ u64 ;
struct rpc_message {struct cred const* rpc_cred; struct nfs_readdirargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct page {int dummy; } ;
struct nfs_readdirargs {unsigned int count; struct page** pages; scalar_t__ cookie; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 size_t NFSPROC_READDIR ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/ * nfs_procedures ; 
 int FUNC5 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct dentry *dentry, const struct cred *cred,
		 u64 cookie, struct page **pages, unsigned int count, bool plus)
{
	struct inode		*dir = FUNC2(dentry);
	struct nfs_readdirargs	arg = {
		.fh		= FUNC1(dir),
		.cookie		= cookie,
		.count		= count,
		.pages		= pages,
	};
	struct rpc_message	msg = {
		.rpc_proc	= &nfs_procedures[NFSPROC_READDIR],
		.rpc_argp	= &arg,
		.rpc_cred	= cred,
	};
	int			status;

	FUNC3("NFS call  readdir %d\n", (unsigned int)cookie);
	status = FUNC5(FUNC0(dir), &msg, 0);

	FUNC4(dir);

	FUNC3("NFS reply readdir: %d\n", status);
	return status;
}