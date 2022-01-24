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
struct super_block {int dummy; } ;
struct seq_file {struct super_block* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_magic; } ;
struct reiserfs_super_block {TYPE_1__ s_v1; } ;
struct reiserfs_sb_info {struct reiserfs_super_block* s_rs; } ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int R5_HASH ; 
 struct reiserfs_sb_info* FUNC3 (struct super_block*) ; 
 int TEA_HASH ; 
 int UNSET_HASH ; 
 int YURA_HASH ; 
 int reiserfs_attrs_cleared ; 
 int /*<<< orphan*/  s_block_count ; 
 int /*<<< orphan*/  s_blocksize ; 
 int /*<<< orphan*/  s_bmap_nr ; 
 int /*<<< orphan*/  s_flags ; 
 int /*<<< orphan*/  s_free_blocks ; 
 int /*<<< orphan*/  s_fs_state ; 
 int /*<<< orphan*/  s_hash_function_code ; 
 int /*<<< orphan*/  s_oid_cursize ; 
 int /*<<< orphan*/  s_oid_maxsize ; 
 int /*<<< orphan*/  s_reserved_for_journal ; 
 int /*<<< orphan*/  s_root_block ; 
 int /*<<< orphan*/  s_tree_height ; 
 int /*<<< orphan*/  s_umount_state ; 
 int /*<<< orphan*/  s_version ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct seq_file *m, void *unused)
{
	struct super_block *sb = m->private;
	struct reiserfs_sb_info *sb_info = FUNC3(sb);
	struct reiserfs_super_block *rs = sb_info->s_rs;
	int hash_code = FUNC1(s_hash_function_code);
	__u32 flags = FUNC2(s_flags);

	FUNC4(m, "block_count: \t%i\n"
		   "free_blocks: \t%i\n"
		   "root_block: \t%i\n"
		   "blocksize: \t%i\n"
		   "oid_maxsize: \t%i\n"
		   "oid_cursize: \t%i\n"
		   "umount_state: \t%i\n"
		   "magic: \t%10.10s\n"
		   "fs_state: \t%i\n"
		   "hash: \t%s\n"
		   "tree_height: \t%i\n"
		   "bmap_nr: \t%i\n"
		   "version: \t%i\n"
		   "flags: \t%x[%s]\n"
		   "reserved_for_journal: \t%i\n",
		   FUNC1(s_block_count),
		   FUNC1(s_free_blocks),
		   FUNC1(s_root_block),
		   FUNC0(s_blocksize),
		   FUNC0(s_oid_maxsize),
		   FUNC0(s_oid_cursize),
		   FUNC0(s_umount_state),
		   rs->s_v1.s_magic,
		   FUNC0(s_fs_state),
		   hash_code == TEA_HASH ? "tea" :
		   (hash_code == YURA_HASH) ? "rupasov" :
		   (hash_code == R5_HASH) ? "r5" :
		   (hash_code == UNSET_HASH) ? "unset" : "unknown",
		   FUNC0(s_tree_height),
		   FUNC0(s_bmap_nr),
		   FUNC0(s_version), flags, (flags & reiserfs_attrs_cleared)
		   ? "attrs_cleared" : "", FUNC0(s_reserved_for_journal));

	return 0;
}