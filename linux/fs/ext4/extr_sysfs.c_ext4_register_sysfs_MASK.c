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
struct super_block {int /*<<< orphan*/  s_id; } ;
struct ext4_sb_info {scalar_t__ s_proc; int /*<<< orphan*/  s_kobj_unregister; int /*<<< orphan*/  s_kobj; } ;

/* Variables and functions */
 struct ext4_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/  ext4_mb_seq_groups_ops ; 
 scalar_t__ ext4_proc_root ; 
 int /*<<< orphan*/  ext4_root ; 
 int /*<<< orphan*/  ext4_sb_ktype ; 
 int /*<<< orphan*/  ext4_seq_es_shrinker_info_show ; 
 int /*<<< orphan*/  ext4_seq_options_show ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct super_block*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct super_block *sb)
{
	struct ext4_sb_info *sbi = FUNC0(sb);
	int err;

	FUNC1(&sbi->s_kobj_unregister);
	err = FUNC2(&sbi->s_kobj, &ext4_sb_ktype, ext4_root,
				   "%s", sb->s_id);
	if (err) {
		FUNC3(&sbi->s_kobj);
		FUNC7(&sbi->s_kobj_unregister);
		return err;
	}

	if (ext4_proc_root)
		sbi->s_proc = FUNC6(sb->s_id, ext4_proc_root);
	if (sbi->s_proc) {
		FUNC5("options", S_IRUGO, sbi->s_proc,
				ext4_seq_options_show, sb);
		FUNC5("es_shrinker_info", S_IRUGO,
				sbi->s_proc, ext4_seq_es_shrinker_info_show,
				sb);
		FUNC4("mb_groups", S_IRUGO, sbi->s_proc,
				&ext4_mb_seq_groups_ops, sb);
	}
	return 0;
}