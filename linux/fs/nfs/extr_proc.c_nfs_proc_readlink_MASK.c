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
struct rpc_message {struct nfs_readlinkargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct page {int dummy; } ;
struct nfs_readlinkargs {unsigned int pgbase; unsigned int pglen; struct page** pages; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 size_t NFSPROC_READLINK ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/ * nfs_procedures ; 
 int FUNC3 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct page *page,
		unsigned int pgbase, unsigned int pglen)
{
	struct nfs_readlinkargs	args = {
		.fh		= FUNC1(inode),
		.pgbase		= pgbase,
		.pglen		= pglen,
		.pages		= &page
	};
	struct rpc_message msg = {
		.rpc_proc	= &nfs_procedures[NFSPROC_READLINK],
		.rpc_argp	= &args,
	};
	int			status;

	FUNC2("NFS call  readlink\n");
	status = FUNC3(FUNC0(inode), &msg, 0);
	FUNC2("NFS reply readlink: %d\n", status);
	return status;
}