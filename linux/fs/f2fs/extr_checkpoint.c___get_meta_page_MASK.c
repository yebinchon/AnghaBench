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
struct page {struct address_space* mapping; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {int op_flags; int is_por; struct page* page; int /*<<< orphan*/ * encrypted_page; int /*<<< orphan*/  new_blkaddr; int /*<<< orphan*/  old_blkaddr; int /*<<< orphan*/  op; int /*<<< orphan*/  type; struct f2fs_sb_info* sbi; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int EIO ; 
 struct page* FUNC0 (int) ; 
 int /*<<< orphan*/  META ; 
 struct address_space* FUNC1 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int REQ_PRIO ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct page* FUNC4 (struct address_space*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int) ; 
 int FUNC6 (struct f2fs_io_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct page *FUNC9(struct f2fs_sb_info *sbi, pgoff_t index,
							bool is_meta)
{
	struct address_space *mapping = FUNC1(sbi);
	struct page *page;
	struct f2fs_io_info fio = {
		.sbi = sbi,
		.type = META,
		.op = REQ_OP_READ,
		.op_flags = REQ_META | REQ_PRIO,
		.old_blkaddr = index,
		.new_blkaddr = index,
		.encrypted_page = NULL,
		.is_por = !is_meta,
	};
	int err;

	if (FUNC8(!is_meta))
		fio.op_flags &= ~REQ_META;
repeat:
	page = FUNC4(mapping, index, false);
	if (!page) {
		FUNC3();
		goto repeat;
	}
	if (FUNC2(page))
		goto out;

	fio.page = page;

	err = FUNC6(&fio);
	if (err) {
		FUNC5(page, 1);
		return FUNC0(err);
	}

	FUNC7(page);
	if (FUNC8(page->mapping != mapping)) {
		FUNC5(page, 1);
		goto repeat;
	}

	if (FUNC8(!FUNC2(page))) {
		FUNC5(page, 1);
		return FUNC0(-EIO);
	}
out:
	return page;
}