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
struct nfs_open_context {int /*<<< orphan*/  flags; } ;
struct nfs_lock_context {int dummy; } ;
struct inode {int dummy; } ;
struct file_lock {int fl_flags; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nlm_host; } ;

/* Variables and functions */
 int FL_CLOSE ; 
 scalar_t__ FUNC0 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  NFS_CONTEXT_UNLOCK ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct file*) ; 
 struct nfs_open_context* FUNC3 (struct file*) ; 
 struct nfs_lock_context* FUNC4 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_lock_context*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,struct file_lock*,struct nfs_lock_context*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct file *filp, int cmd, struct file_lock *fl)
{
	struct inode *inode = FUNC2(filp);
	struct nfs_lock_context *l_ctx = NULL;
	struct nfs_open_context *ctx = FUNC3(filp);
	int status;

	if (fl->fl_flags & FL_CLOSE) {
		l_ctx = FUNC4(ctx);
		if (FUNC0(l_ctx))
			l_ctx = NULL;
		else
			FUNC7(NFS_CONTEXT_UNLOCK, &ctx->flags);
	}

	status = FUNC6(FUNC1(inode)->nlm_host, cmd, fl, l_ctx);

	if (l_ctx)
		FUNC5(l_ctx);

	return status;
}