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
struct node_info {scalar_t__ blk_addr; int /*<<< orphan*/  ino; int /*<<< orphan*/  nid; } ;
struct nat_entry {int /*<<< orphan*/  ni; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int /*<<< orphan*/  nat_tree_lock; } ;
typedef  scalar_t__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  HAS_FSYNCED_INODE ; 
 int /*<<< orphan*/  HAS_LAST_FSYNC ; 
 int /*<<< orphan*/  IS_CHECKPOINTED ; 
 scalar_t__ NEW_ADDR ; 
 struct f2fs_nm_info* FUNC0 (struct f2fs_sb_info*) ; 
 scalar_t__ NULL_ADDR ; 
 struct nat_entry* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nat_entry*) ; 
 struct nat_entry* FUNC3 (struct f2fs_nm_info*,struct nat_entry*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 struct nat_entry* FUNC5 (struct f2fs_nm_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_nm_info*,struct nat_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct node_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char) ; 
 scalar_t__ FUNC11 (struct nat_entry*) ; 
 unsigned char FUNC12 (struct nat_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct nat_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct nat_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct nat_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct f2fs_sb_info *sbi, struct node_info *ni,
			block_t new_blkaddr, bool fsync_done)
{
	struct f2fs_nm_info *nm_i = FUNC0(sbi);
	struct nat_entry *e;
	struct nat_entry *new = FUNC1(ni->nid, true);

	FUNC8(&nm_i->nat_tree_lock);
	e = FUNC5(nm_i, ni->nid);
	if (!e) {
		e = FUNC3(nm_i, new, NULL, true);
		FUNC7(&e->ni, ni);
		FUNC9(sbi, ni->blk_addr == NEW_ADDR);
	} else if (new_blkaddr == NEW_ADDR) {
		/*
		 * when nid is reallocated,
		 * previous nat entry can be remained in nat cache.
		 * So, reinitialize it with new information.
		 */
		FUNC7(&e->ni, ni);
		FUNC9(sbi, ni->blk_addr != NULL_ADDR);
	}
	/* let's free early to reduce memory consumption */
	if (e != new)
		FUNC2(new);

	/* sanity check */
	FUNC9(sbi, FUNC11(e) != ni->blk_addr);
	FUNC9(sbi, FUNC11(e) == NULL_ADDR &&
			new_blkaddr == NULL_ADDR);
	FUNC9(sbi, FUNC11(e) == NEW_ADDR &&
			new_blkaddr == NEW_ADDR);
	FUNC9(sbi, FUNC4(FUNC11(e)) &&
			new_blkaddr == NEW_ADDR);

	/* increment version no as node is removed */
	if (FUNC11(e) != NEW_ADDR && new_blkaddr == NULL_ADDR) {
		unsigned char version = FUNC12(e);
		FUNC14(e, FUNC10(version));
	}

	/* change address */
	FUNC13(e, new_blkaddr);
	if (!FUNC4(new_blkaddr))
		FUNC15(e, IS_CHECKPOINTED, false);
	FUNC6(nm_i, e);

	/* update fsync_mark if its inode nat entry is still alive */
	if (ni->nid != ni->ino)
		e = FUNC5(nm_i, ni->ino);
	if (e) {
		if (fsync_done && ni->nid == ni->ino)
			FUNC15(e, HAS_FSYNCED_INODE, true);
		FUNC15(e, HAS_LAST_FSYNC, fsync_done);
	}
	FUNC16(&nm_i->nat_tree_lock);
}