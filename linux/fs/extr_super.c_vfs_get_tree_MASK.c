#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {scalar_t__ s_maxbytes; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  s_bdi; } ;
struct fs_context {TYPE_3__* fs_type; int /*<<< orphan*/  security; TYPE_2__* root; TYPE_1__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {struct super_block* d_sb; } ;
struct TYPE_4__ {int (* get_tree ) (struct fs_context*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EBUSY ; 
 int /*<<< orphan*/  SB_BORN ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct fs_context*) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct fs_context *fc)
{
	struct super_block *sb;
	int error;

	if (fc->root)
		return -EBUSY;

	/* Get the mountable root in fc->root, with a ref on the root and a ref
	 * on the superblock.
	 */
	error = fc->ops->get_tree(fc);
	if (error < 0)
		return error;

	if (!fc->root) {
		FUNC4("Filesystem %s get_tree() didn't set fc->root\n",
		       fc->fs_type->name);
		/* We don't know what the locking state of the superblock is -
		 * if there is a superblock.
		 */
		FUNC0();
	}

	sb = fc->root->d_sb;
	FUNC2(!sb->s_bdi);

	/*
	 * Write barrier is for super_cache_count(). We place it before setting
	 * SB_BORN as the data dependency between the two functions is the
	 * superblock structure contents that we just set up, not the SB_BORN
	 * flag.
	 */
	FUNC6();
	sb->s_flags |= SB_BORN;

	error = FUNC5(sb, fc->security, 0, NULL);
	if (FUNC8(error)) {
		FUNC3(fc);
		return error;
	}

	/*
	 * filesystems should never set s_maxbytes larger than MAX_LFS_FILESIZE
	 * but s_maxbytes was an unsigned long long for many releases. Throw
	 * this warning for a little while to try and catch filesystems that
	 * violate this rule.
	 */
	FUNC1((sb->s_maxbytes < 0), "%s set sb->s_maxbytes to "
		"negative value (%lld)\n", fc->fs_type->name, sb->s_maxbytes);

	return 0;
}