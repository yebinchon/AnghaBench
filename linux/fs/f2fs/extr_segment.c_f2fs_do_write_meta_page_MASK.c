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
struct page {scalar_t__ index; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {int op_flags; scalar_t__ old_blkaddr; scalar_t__ new_blkaddr; int in_list; int /*<<< orphan*/ * encrypted_page; struct page* page; int /*<<< orphan*/  op; int /*<<< orphan*/  temp; int /*<<< orphan*/  type; struct f2fs_sb_info* sbi; } ;
typedef  enum iostat_type { ____Placeholder_iostat_type } iostat_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  F2FS_BLKSIZE ; 
 int /*<<< orphan*/  HOT ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  META ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int REQ_PRIO ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_io_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(struct f2fs_sb_info *sbi, struct page *page,
					enum iostat_type io_type)
{
	struct f2fs_io_info fio = {
		.sbi = sbi,
		.type = META,
		.temp = HOT,
		.op = REQ_OP_WRITE,
		.op_flags = REQ_SYNC | REQ_META | REQ_PRIO,
		.old_blkaddr = page->index,
		.new_blkaddr = page->index,
		.page = page,
		.encrypted_page = NULL,
		.in_list = false,
	};

	if (FUNC6(page->index >= FUNC1(sbi)))
		fio.op_flags &= ~REQ_META;

	FUNC4(page);
	FUNC0(page);
	FUNC2(&fio);

	FUNC5(sbi, page->index);
	FUNC3(sbi, io_type, F2FS_BLKSIZE);
}