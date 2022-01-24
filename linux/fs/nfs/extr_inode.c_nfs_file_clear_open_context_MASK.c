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
struct nfs_open_context {scalar_t__ error; int /*<<< orphan*/  dentry; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct file {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfs_open_context* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_open_context*) ; 

void FUNC4(struct file *filp)
{
	struct nfs_open_context *ctx = FUNC2(filp);

	if (ctx) {
		struct inode *inode = FUNC0(ctx->dentry);

		/*
		 * We fatal error on write before. Try to writeback
		 * every page again.
		 */
		if (ctx->error < 0)
			FUNC1(inode->i_mapping);
		filp->private_data = NULL;
		FUNC3(ctx);
	}
}