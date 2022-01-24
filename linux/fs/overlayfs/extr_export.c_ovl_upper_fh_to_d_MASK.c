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
struct super_block {struct ovl_fs* s_fs_info; } ;
struct ovl_fs {int /*<<< orphan*/  upper_mnt; } ;
struct ovl_fh {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct ovl_fh*,int /*<<< orphan*/ ,int) ; 
 struct dentry* FUNC4 (struct super_block*,struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC5(struct super_block *sb,
					struct ovl_fh *fh)
{
	struct ovl_fs *ofs = sb->s_fs_info;
	struct dentry *dentry;
	struct dentry *upper;

	if (!ofs->upper_mnt)
		return FUNC0(-EACCES);

	upper = FUNC3(fh, ofs->upper_mnt, true);
	if (FUNC1(upper))
		return upper;

	dentry = FUNC4(sb, upper, NULL, NULL);
	FUNC2(upper);

	return dentry;
}