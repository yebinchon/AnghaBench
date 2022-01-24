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
struct super_block {int dummy; } ;
struct seq_file {struct super_block* private; } ;
struct reiserfs_sb_info {int /*<<< orphan*/  s_generation_counter; } ;

/* Variables and functions */
 struct reiserfs_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ REISERFS_VALID_FS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bread_miss ; 
 int /*<<< orphan*/  breads ; 
 scalar_t__ FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  cut_from_item_restarted ; 
 int /*<<< orphan*/  delete_item_restarted ; 
 int /*<<< orphan*/  delete_solid_item_restarted ; 
 scalar_t__ FUNC5 (struct super_block*) ; 
 scalar_t__ FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  insert_item_restarted ; 
 int /*<<< orphan*/  leaked_oid ; 
 int /*<<< orphan*/  leaves_removable ; 
 int /*<<< orphan*/  max_hash_collisions ; 
 int /*<<< orphan*/  paste_into_item_restarted ; 
 scalar_t__ FUNC7 (struct super_block*) ; 
 scalar_t__ FUNC8 (struct super_block*) ; 
 scalar_t__ FUNC9 (struct super_block*) ; 
 scalar_t__ FUNC10 (struct super_block*) ; 
 scalar_t__ FUNC11 (struct super_block*) ; 
 scalar_t__ FUNC12 (struct super_block*) ; 
 scalar_t__ FUNC13 (struct super_block*) ; 
 scalar_t__ FUNC14 (struct super_block*) ; 
 scalar_t__ FUNC15 (struct super_block*) ; 
 int /*<<< orphan*/  s_bmaps ; 
 int /*<<< orphan*/  s_bmaps_without_search ; 
 int /*<<< orphan*/  s_direct2indirect ; 
 int /*<<< orphan*/  s_disk_reads ; 
 int /*<<< orphan*/  s_disk_writes ; 
 int /*<<< orphan*/  s_do_balance ; 
 int /*<<< orphan*/  s_fix_nodes ; 
 int /*<<< orphan*/  s_good_search_by_key_reada ; 
 int /*<<< orphan*/  s_indirect2direct ; 
 int /*<<< orphan*/  s_mount_state ; 
 int /*<<< orphan*/  s_unneeded_left_neighbor ; 
 int /*<<< orphan*/  search_by_key ; 
 int /*<<< orphan*/  search_by_key_fs_changed ; 
 int /*<<< orphan*/  search_by_key_restarted ; 
 int /*<<< orphan*/  FUNC16 (struct seq_file*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct seq_file *m, void *unused)
{
	struct super_block *sb = m->private;
	struct reiserfs_sb_info *r = FUNC0(sb);

	FUNC16(m, "state: \t%s\n"
		   "mount options: \t%s%s%s%s%s%s%s%s%s%s%s\n"
		   "gen. counter: \t%i\n"
		   "s_disk_reads: \t%i\n"
		   "s_disk_writes: \t%i\n"
		   "s_fix_nodes: \t%i\n"
		   "s_do_balance: \t%i\n"
		   "s_unneeded_left_neighbor: \t%i\n"
		   "s_good_search_by_key_reada: \t%i\n"
		   "s_bmaps: \t%i\n"
		   "s_bmaps_without_search: \t%i\n"
		   "s_direct2indirect: \t%i\n"
		   "s_indirect2direct: \t%i\n"
		   "\n"
		   "max_hash_collisions: \t%i\n"
		   "breads: \t%lu\n"
		   "bread_misses: \t%lu\n"
		   "search_by_key: \t%lu\n"
		   "search_by_key_fs_changed: \t%lu\n"
		   "search_by_key_restarted: \t%lu\n"
		   "insert_item_restarted: \t%lu\n"
		   "paste_into_item_restarted: \t%lu\n"
		   "cut_from_item_restarted: \t%lu\n"
		   "delete_solid_item_restarted: \t%lu\n"
		   "delete_item_restarted: \t%lu\n"
		   "leaked_oid: \t%lu\n"
		   "leaves_removable: \t%lu\n",
		   FUNC1(s_mount_state) == REISERFS_VALID_FS ?
		   "REISERFS_VALID_FS" : "REISERFS_ERROR_FS",
		   FUNC11(sb) ? "FORCE_R5 " : "",
		   FUNC12(sb) ? "FORCE_RUPASOV " : "",
		   FUNC13(sb) ? "FORCE_TEA " : "",
		   FUNC7(sb) ? "DETECT_HASH " : "",
		   FUNC9(sb) ? "NO_BORDER " : "BORDER ",
		   FUNC10(sb) ?
		   "NO_UNHASHED_RELOCATION " : "",
		   FUNC8(sb) ? "UNHASHED_RELOCATION " : "",
		   FUNC14(sb) ? "TEST4 " : "",
		   FUNC5(sb) ? "TAILS " : FUNC6(sb) ?
		   "SMALL_TAILS " : "NO_TAILS ",
		   FUNC15(sb) ? "REPLAY_ONLY " : "",
		   FUNC4(sb) ? "CONV " : "",
		   FUNC3(&r->s_generation_counter),
		   FUNC1(s_disk_reads), FUNC1(s_disk_writes), FUNC1(s_fix_nodes),
		   FUNC1(s_do_balance), FUNC1(s_unneeded_left_neighbor),
		   FUNC1(s_good_search_by_key_reada), FUNC1(s_bmaps),
		   FUNC1(s_bmaps_without_search), FUNC1(s_direct2indirect),
		   FUNC1(s_indirect2direct), FUNC2(max_hash_collisions), FUNC2(breads),
		   FUNC2(bread_miss), FUNC2(search_by_key),
		   FUNC2(search_by_key_fs_changed), FUNC2(search_by_key_restarted),
		   FUNC2(insert_item_restarted), FUNC2(paste_into_item_restarted),
		   FUNC2(cut_from_item_restarted),
		   FUNC2(delete_solid_item_restarted), FUNC2(delete_item_restarted),
		   FUNC2(leaked_oid), FUNC2(leaves_removable));

	return 0;
}