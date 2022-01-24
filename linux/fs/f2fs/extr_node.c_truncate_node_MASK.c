#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct node_info {int /*<<< orphan*/  blk_addr; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {scalar_t__ nid; TYPE_1__* inode; TYPE_2__* node_page; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
struct TYPE_8__ {int /*<<< orphan*/  index; } ;
struct TYPE_7__ {scalar_t__ i_ino; } ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  NULL_ADDR ; 
 int /*<<< orphan*/  SBI_IS_DIRTY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,TYPE_1__*,int) ; 
 int FUNC5 (struct f2fs_sb_info*,scalar_t__,struct node_info*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*,struct node_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct dnode_of_data *dn)
{
	struct f2fs_sb_info *sbi = FUNC0(dn->inode);
	struct node_info ni;
	int err;
	pgoff_t index;

	err = FUNC5(sbi, dn->nid, &ni);
	if (err)
		return err;

	/* Deallocate node address */
	FUNC7(sbi, ni.blk_addr);
	FUNC4(sbi, dn->inode, dn->nid == dn->inode->i_ino);
	FUNC11(sbi, &ni, NULL_ADDR, false);

	if (dn->nid == dn->inode->i_ino) {
		FUNC9(sbi, dn->nid);
		FUNC3(sbi);
		FUNC6(dn->inode);
	}

	FUNC2(dn->node_page);
	FUNC12(sbi, SBI_IS_DIRTY);

	index = dn->node_page->index;
	FUNC8(dn->node_page, 1);

	FUNC10(FUNC1(sbi),
			index, index);

	dn->node_page = NULL;
	FUNC13(dn->inode, dn->nid, ni.blk_addr);

	return 0;
}