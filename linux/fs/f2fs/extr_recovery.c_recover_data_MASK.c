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
struct page {int dummy; } ;
struct list_head {int dummy; } ;
struct fsync_inode_entry {scalar_t__ last_dentry; scalar_t__ blkaddr; int /*<<< orphan*/  list; int /*<<< orphan*/  inode; } ;
struct f2fs_sb_info {int dummy; } ;
struct curseg_info {int dummy; } ;
typedef  scalar_t__ block_t ;

/* Variables and functions */
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CURSEG_WARM_NODE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  META_POR ; 
 scalar_t__ FUNC3 (struct f2fs_sb_info*,struct curseg_info*) ; 
 int FUNC4 (struct page*) ; 
 int FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*) ; 
 struct page* FUNC7 (struct f2fs_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,scalar_t__) ; 
 struct fsync_inode_entry* FUNC11 (struct list_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC15 (struct page*) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct page*,struct list_head*) ; 
 int FUNC17 (int /*<<< orphan*/ ,struct page*) ; 

__attribute__((used)) static int FUNC18(struct f2fs_sb_info *sbi, struct list_head *inode_list,
		struct list_head *tmp_inode_list, struct list_head *dir_list)
{
	struct curseg_info *curseg;
	struct page *page = NULL;
	int err = 0;
	block_t blkaddr;

	/* get node pages in the current segment */
	curseg = FUNC0(sbi, CURSEG_WARM_NODE);
	blkaddr = FUNC3(sbi, curseg);

	while (1) {
		struct fsync_inode_entry *entry;

		if (!FUNC8(sbi, blkaddr, META_POR))
			break;

		FUNC10(sbi, blkaddr);

		page = FUNC7(sbi, blkaddr);
		if (FUNC1(page)) {
			err = FUNC4(page);
			break;
		}

		if (!FUNC13(page)) {
			FUNC9(page, 1);
			break;
		}

		entry = FUNC11(inode_list, FUNC12(page));
		if (!entry)
			goto next;
		/*
		 * inode(x) | CP | inode(x) | dnode(F)
		 * In this case, we can lose the latest inode(x).
		 * So, call recover_inode for the inode update.
		 */
		if (FUNC2(page)) {
			err = FUNC17(entry->inode, page);
			if (err) {
				FUNC9(page, 1);
				break;
			}
		}
		if (entry->last_dentry == blkaddr) {
			err = FUNC16(entry->inode, page, dir_list);
			if (err) {
				FUNC9(page, 1);
				break;
			}
		}
		err = FUNC5(sbi, entry->inode, page);
		if (err) {
			FUNC9(page, 1);
			break;
		}

		if (entry->blkaddr == blkaddr)
			FUNC14(&entry->list, tmp_inode_list);
next:
		/* check next segment */
		blkaddr = FUNC15(page);
		FUNC9(page, 1);
	}
	if (!err)
		FUNC6(sbi);
	return err;
}