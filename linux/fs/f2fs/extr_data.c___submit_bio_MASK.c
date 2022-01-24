#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct f2fs_sb_info {int /*<<< orphan*/  sb; int /*<<< orphan*/  write_io_dummy; } ;
struct TYPE_3__ {unsigned int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  enum page_type { ____Placeholder_page_type } page_type ;
struct TYPE_4__ {scalar_t__ plug; } ;

/* Variables and functions */
 int DATA ; 
 scalar_t__ DUMMY_WRITTEN_PAGE ; 
 unsigned int F2FS_BLKSIZE_BITS ; 
 scalar_t__ FUNC0 (struct f2fs_sb_info*) ; 
 unsigned int FUNC1 (struct f2fs_sb_info*) ; 
 int GFP_NOIO ; 
 int /*<<< orphan*/  LFS ; 
 int NODE ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  SBI_NEED_CP ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int __GFP_NOFAIL ; 
 scalar_t__ FUNC3 (struct bio*,struct page*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 struct page* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bio*) ; 
 scalar_t__ FUNC13 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,struct bio*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,struct bio*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC17(struct f2fs_sb_info *sbi,
				struct bio *bio, enum page_type type)
{
	if (!FUNC7(FUNC4(bio))) {
		unsigned int start;

		if (type != DATA && type != NODE)
			goto submit_io;

		if (FUNC13(sbi, LFS) && current->plug)
			FUNC5(current->plug);

		if (FUNC0(sbi))
			goto submit_io;

		start = bio->bi_iter.bi_size >> F2FS_BLKSIZE_BITS;
		start %= FUNC1(sbi);

		if (start == 0)
			goto submit_io;

		/* fill dummy pages */
		for (; start < FUNC1(sbi); start++) {
			struct page *page =
				FUNC9(sbi->write_io_dummy,
					      GFP_NOIO | __GFP_NOFAIL);
			FUNC6(sbi, !page);

			FUNC16(page, 0, PAGE_SIZE);
			FUNC2(page);
			FUNC10(page, (unsigned long)DUMMY_WRITTEN_PAGE);
			FUNC8(page);
			if (FUNC3(bio, page, PAGE_SIZE, 0) < PAGE_SIZE)
				FUNC6(sbi, 1);
		}
		/*
		 * In the NODE case, we lose next block address chain. So, we
		 * need to do checkpoint in f2fs_sync_file.
		 */
		if (type == NODE)
			FUNC11(sbi, SBI_NEED_CP);
	}
submit_io:
	if (FUNC7(FUNC4(bio)))
		FUNC14(sbi->sb, type, bio);
	else
		FUNC15(sbi->sb, type, bio);
	FUNC12(bio);
}