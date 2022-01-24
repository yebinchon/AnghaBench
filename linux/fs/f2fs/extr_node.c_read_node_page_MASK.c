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
struct page {int /*<<< orphan*/  index; } ;
struct node_info {scalar_t__ blk_addr; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {int op_flags; scalar_t__ new_blkaddr; scalar_t__ old_blkaddr; int /*<<< orphan*/ * encrypted_page; struct page* page; int /*<<< orphan*/  op; int /*<<< orphan*/  type; struct f2fs_sb_info* sbi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EFSBADCRC ; 
 int ENOENT ; 
 struct f2fs_sb_info* FUNC1 (struct page*) ; 
 int LOCKED_PAGE ; 
 int /*<<< orphan*/  NODE ; 
 scalar_t__ NULL_ADDR ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  SBI_IS_SHUTDOWN ; 
 int FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ,struct node_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,struct page*) ; 
 int FUNC5 (struct f2fs_io_info*) ; 
 scalar_t__ FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct page *page, int op_flags)
{
	struct f2fs_sb_info *sbi = FUNC1(page);
	struct node_info ni;
	struct f2fs_io_info fio = {
		.sbi = sbi,
		.type = NODE,
		.op = REQ_OP_READ,
		.op_flags = op_flags,
		.page = page,
		.encrypted_page = NULL,
	};
	int err;

	if (FUNC2(page)) {
		if (!FUNC4(sbi, page)) {
			FUNC0(page);
			return -EFSBADCRC;
		}
		return LOCKED_PAGE;
	}

	err = FUNC3(sbi, page->index, &ni);
	if (err)
		return err;

	if (FUNC7(ni.blk_addr == NULL_ADDR) ||
			FUNC6(sbi, SBI_IS_SHUTDOWN)) {
		FUNC0(page);
		return -ENOENT;
	}

	fio.new_blkaddr = fio.old_blkaddr = ni.blk_addr;
	return FUNC5(&fio);
}