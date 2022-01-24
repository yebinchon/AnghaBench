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
struct nfs_open_context {int dummy; } ;
struct inode {int dummy; } ;
struct file {int /*<<< orphan*/  f_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs_open_context*) ; 
 int FUNC1 (struct nfs_open_context*) ; 
 struct nfs_open_context* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_open_context*) ; 

int FUNC7(struct inode *inode, struct file *filp)
{
	struct nfs_open_context *ctx;

	ctx = FUNC2(FUNC3(filp), filp->f_mode, filp);
	if (FUNC0(ctx))
		return FUNC1(ctx);
	FUNC4(filp, ctx);
	FUNC6(ctx);
	FUNC5(inode, filp);
	return 0;
}