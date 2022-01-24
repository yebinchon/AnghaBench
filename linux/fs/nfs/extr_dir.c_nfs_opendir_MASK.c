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
struct nfs_open_dir_context {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct nfs_open_dir_context* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE ; 
 scalar_t__ FUNC0 (struct nfs_open_dir_context*) ; 
 int /*<<< orphan*/  NFSIOS_VFSOPEN ; 
 int FUNC1 (struct nfs_open_dir_context*) ; 
 struct nfs_open_dir_context* FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct inode *inode, struct file *filp)
{
	int res = 0;
	struct nfs_open_dir_context *ctx;

	FUNC4(FILE, "NFS: open dir(%pD2)\n", filp);

	FUNC5(inode, NFSIOS_VFSOPEN);

	ctx = FUNC2(inode, FUNC3());
	if (FUNC0(ctx)) {
		res = FUNC1(ctx);
		goto out;
	}
	filp->private_data = ctx;
out:
	return res;
}