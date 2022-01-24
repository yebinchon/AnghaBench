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
struct msdos_sb_info {int dummy; } ;
struct msdos_dir_entry {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct fat_slot_info {int /*<<< orphan*/  i_pos; int /*<<< orphan*/  de; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {int i_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  MSDOS_ROOT_INO ; 
 struct msdos_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 struct inode* FUNC3 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct msdos_sb_info*,int) ; 
 struct inode* FUNC5 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct msdos_dir_entry*) ; 
 int FUNC7 (struct msdos_sb_info*,struct msdos_dir_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int,struct fat_slot_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC12 (struct super_block*) ; 
 struct buffer_head* FUNC13 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
struct inode *FUNC14(struct super_block *sb, int parent_logstart)
{
	int search_clus, clus_to_match;
	struct msdos_dir_entry *de;
	struct inode *parent = NULL;
	struct inode *dummy_grand_parent = NULL;
	struct fat_slot_info sinfo;
	struct msdos_sb_info *sbi = FUNC1(sb);
	sector_t blknr = FUNC4(sbi, parent_logstart);
	struct buffer_head *parent_bh = FUNC13(sb, blknr);
	if (!parent_bh) {
		FUNC8(sb, KERN_ERR,
			"unable to read cluster of parent directory");
		return NULL;
	}

	de = (struct msdos_dir_entry *) parent_bh->b_data;
	clus_to_match = FUNC7(sbi, &de[0]);
	search_clus = FUNC7(sbi, &de[1]);

	dummy_grand_parent = FUNC5(sb, search_clus);
	if (!dummy_grand_parent) {
		dummy_grand_parent = FUNC12(sb);
		if (!dummy_grand_parent) {
			FUNC2(parent_bh);
			return parent;
		}

		dummy_grand_parent->i_ino = FUNC11(sb, MSDOS_ROOT_INO);
		FUNC6(dummy_grand_parent, &de[1]);
		FUNC0(dummy_grand_parent)->i_pos = -1;
	}

	if (!FUNC9(dummy_grand_parent, clus_to_match, &sinfo))
		parent = FUNC3(sb, sinfo.de, sinfo.i_pos);

	FUNC2(parent_bh);
	FUNC10(dummy_grand_parent);

	return parent;
}