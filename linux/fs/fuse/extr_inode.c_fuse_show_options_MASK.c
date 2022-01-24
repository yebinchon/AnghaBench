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
struct super_block {int /*<<< orphan*/  s_blocksize; scalar_t__ s_bdev; } ;
struct seq_file {int dummy; } ;
struct fuse_conn {int /*<<< orphan*/  max_read; scalar_t__ allow_other; scalar_t__ default_permissions; int /*<<< orphan*/  group_id; int /*<<< orphan*/  user_ns; int /*<<< orphan*/  user_id; scalar_t__ no_mount_options; } ;
struct dentry {struct super_block* d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_DEFAULT_BLKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fuse_conn* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *m, struct dentry *root)
{
	struct super_block *sb = root->d_sb;
	struct fuse_conn *fc = FUNC2(sb);

	if (fc->no_mount_options)
		return 0;

	FUNC3(m, ",user_id=%u", FUNC1(fc->user_ns, fc->user_id));
	FUNC3(m, ",group_id=%u", FUNC0(fc->user_ns, fc->group_id));
	if (fc->default_permissions)
		FUNC4(m, ",default_permissions");
	if (fc->allow_other)
		FUNC4(m, ",allow_other");
	if (fc->max_read != ~0)
		FUNC3(m, ",max_read=%u", fc->max_read);
	if (sb->s_bdev && sb->s_blocksize != FUSE_DEFAULT_BLKSIZE)
		FUNC3(m, ",blksize=%lu", sb->s_blocksize);
	return 0;
}