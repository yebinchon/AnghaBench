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
struct inode {int dummy; } ;
struct fuse_inode {int /*<<< orphan*/  state; } ;
struct fuse_conn {int /*<<< orphan*/  readdirplus_auto; int /*<<< orphan*/  do_readdirplus; } ;
struct dir_context {scalar_t__ pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_I_ADVISE_RDPLUS ; 
 struct fuse_conn* FUNC0 (struct inode*) ; 
 struct fuse_inode* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct inode *dir, struct dir_context *ctx)
{
	struct fuse_conn *fc = FUNC0(dir);
	struct fuse_inode *fi = FUNC1(dir);

	if (!fc->do_readdirplus)
		return false;
	if (!fc->readdirplus_auto)
		return true;
	if (FUNC2(FUSE_I_ADVISE_RDPLUS, &fi->state))
		return true;
	if (ctx->pos == 0)
		return true;
	return false;
}