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
struct super_block {scalar_t__ s_user_ns; struct fuse_conn* s_fs_info; } ;
struct fuse_fs_context {int /*<<< orphan*/ * fudptr; int /*<<< orphan*/  fd; } ;
struct fuse_conn {int /*<<< orphan*/  release; } ;
struct fs_context {struct fuse_fs_context* fs_private; } ;
struct file {int /*<<< orphan*/  private_data; TYPE_1__* f_cred; int /*<<< orphan*/ * f_op; } ;
struct TYPE_2__ {scalar_t__ user_ns; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct file* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_conn*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*) ; 
 int /*<<< orphan*/  fuse_dev_fiq_ops ; 
 int /*<<< orphan*/  fuse_dev_operations ; 
 int FUNC4 (struct super_block*,struct fuse_fs_context*) ; 
 int /*<<< orphan*/  fuse_free_conn ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 struct fuse_conn* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct super_block *sb, struct fs_context *fsc)
{
	struct fuse_fs_context *ctx = fsc->fs_private;
	struct file *file;
	int err;
	struct fuse_conn *fc;

	err = -EINVAL;
	file = FUNC0(ctx->fd);
	if (!file)
		goto err;

	/*
	 * Require mount to happen from the same user namespace which
	 * opened /dev/fuse to prevent potential attacks.
	 */
	if ((file->f_op != &fuse_dev_operations) ||
	    (file->f_cred->user_ns != sb->s_user_ns))
		goto err_fput;
	ctx->fudptr = &file->private_data;

	fc = FUNC7(sizeof(*fc), GFP_KERNEL);
	err = -ENOMEM;
	if (!fc)
		goto err_fput;

	FUNC2(fc, sb->s_user_ns, &fuse_dev_fiq_ops, NULL);
	fc->release = fuse_free_conn;
	sb->s_fs_info = fc;

	err = FUNC4(sb, ctx);
	if (err)
		goto err_put_conn;
	/*
	 * atomic_dec_and_test() in fput() provides the necessary
	 * memory barrier for file->private_data to be visible on all
	 * CPUs after this
	 */
	FUNC1(file);
	FUNC5(FUNC6(sb));
	return 0;

 err_put_conn:
	FUNC3(fc);
	sb->s_fs_info = NULL;
 err_fput:
	FUNC1(file);
 err:
	return err;
}