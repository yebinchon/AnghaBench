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
struct super_block {int /*<<< orphan*/  s_root; int /*<<< orphan*/  s_flags; } ;
struct kernfs_super_info {TYPE_1__* root; int /*<<< orphan*/  node; int /*<<< orphan*/  ns; } ;
struct kernfs_fs_context {int new_sb_created; int /*<<< orphan*/  ns_tag; TYPE_1__* root; } ;
struct fs_context {int /*<<< orphan*/  root; struct kernfs_super_info* s_fs_info; struct kernfs_fs_context* fs_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  supers; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 int FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  SB_ACTIVE ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct super_block*,struct kernfs_fs_context*) ; 
 struct kernfs_super_info* FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  kernfs_mutex ; 
 int /*<<< orphan*/  kernfs_set_super ; 
 int /*<<< orphan*/  kernfs_test_super ; 
 struct kernfs_super_info* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct super_block* FUNC11 (struct fs_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(struct fs_context *fc)
{
	struct kernfs_fs_context *kfc = fc->fs_private;
	struct super_block *sb;
	struct kernfs_super_info *info;
	int error;

	info = FUNC7(sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->root = kfc->root;
	info->ns = kfc->ns_tag;
	FUNC0(&info->node);

	fc->s_fs_info = info;
	sb = FUNC11(fc, kernfs_test_super, kernfs_set_super);
	if (FUNC1(sb))
		return FUNC2(sb);

	if (!sb->s_root) {
		struct kernfs_super_info *info = FUNC6(sb);

		kfc->new_sb_created = true;

		error = FUNC5(sb, kfc);
		if (error) {
			FUNC3(sb);
			return error;
		}
		sb->s_flags |= SB_ACTIVE;

		FUNC9(&kernfs_mutex);
		FUNC8(&info->node, &info->root->supers);
		FUNC10(&kernfs_mutex);
	}

	fc->root = FUNC4(sb->s_root);
	return 0;
}