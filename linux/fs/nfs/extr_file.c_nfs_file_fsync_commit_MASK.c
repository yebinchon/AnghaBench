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
struct nfs_open_context {int /*<<< orphan*/  flags; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FLUSH_SYNC ; 
 int /*<<< orphan*/  NFSIOS_VFSFSYNC ; 
 int /*<<< orphan*/  NFS_CONTEXT_RESEND_WRITES ; 
 int /*<<< orphan*/  FUNC0 (char*,struct file*,int) ; 
 int FUNC1 (struct file*) ; 
 struct inode* FUNC2 (struct file*) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 struct nfs_open_context* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct file *file, int datasync)
{
	struct nfs_open_context *ctx = FUNC4(file);
	struct inode *inode = FUNC2(file);
	int do_resend, status;
	int ret = 0;

	FUNC0("NFS: fsync file(%pD2) datasync %d\n", file, datasync);

	FUNC5(inode, NFSIOS_VFSFSYNC);
	do_resend = FUNC6(NFS_CONTEXT_RESEND_WRITES, &ctx->flags);
	status = FUNC3(inode, FLUSH_SYNC);
	if (status == 0)
		status = FUNC1(file);
	if (status < 0) {
		ret = status;
		goto out;
	}
	do_resend |= FUNC7(NFS_CONTEXT_RESEND_WRITES, &ctx->flags);
	if (do_resend)
		ret = -EAGAIN;
out:
	return ret;
}