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
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int /*<<< orphan*/  next_scan_nid; } ;
struct f2fs_checkpoint {void* next_free_nid; void* valid_inode_count; void* valid_node_count; int /*<<< orphan*/  valid_block_count; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 struct f2fs_checkpoint* FUNC0 (struct f2fs_sb_info*) ; 
 struct f2fs_nm_info* FUNC1 (struct f2fs_sb_info*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*) ; 

__attribute__((used)) static void FUNC8(struct f2fs_sb_info *sbi)
{
	struct f2fs_checkpoint *ckpt = FUNC0(sbi);
	struct f2fs_nm_info *nm_i = FUNC1(sbi);
	nid_t last_nid = nm_i->next_scan_nid;

	FUNC4(sbi, &last_nid);
	ckpt->valid_block_count = FUNC3(FUNC7(sbi));
	ckpt->valid_node_count = FUNC2(FUNC6(sbi));
	ckpt->valid_inode_count = FUNC2(FUNC5(sbi));
	ckpt->next_free_nid = FUNC2(last_nid);
}