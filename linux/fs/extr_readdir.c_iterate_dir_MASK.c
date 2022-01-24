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
struct inode {int /*<<< orphan*/  i_rwsem; } ;
struct file {int /*<<< orphan*/  f_pos; TYPE_1__* f_op; } ;
struct dir_context {int /*<<< orphan*/  pos; } ;
struct TYPE_2__ {int (* iterate_shared ) (struct file*,struct dir_context*) ;int (* iterate ) (struct file*,struct dir_context*) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  MAY_READ ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 struct inode* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct file*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct file*,struct dir_context*) ; 
 int FUNC10 (struct file*,struct dir_context*) ; 

int FUNC11(struct file *file, struct dir_context *ctx)
{
	struct inode *inode = FUNC4(file);
	bool shared = false;
	int res = -ENOTDIR;
	if (file->f_op->iterate_shared)
		shared = true;
	else if (!file->f_op->iterate)
		goto out;

	res = FUNC8(file, MAY_READ);
	if (res)
		goto out;

	if (shared)
		res = FUNC1(&inode->i_rwsem);
	else
		res = FUNC2(&inode->i_rwsem);
	if (res)
		goto out;

	res = -ENOENT;
	if (!FUNC0(inode)) {
		ctx->pos = file->f_pos;
		if (shared)
			res = file->f_op->iterate_shared(file, ctx);
		else
			res = file->f_op->iterate(file, ctx);
		file->f_pos = ctx->pos;
		FUNC5(file);
		FUNC3(file);
	}
	if (shared)
		FUNC7(inode);
	else
		FUNC6(inode);
out:
	return res;
}