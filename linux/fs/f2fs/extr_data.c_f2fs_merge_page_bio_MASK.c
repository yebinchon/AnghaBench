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
struct f2fs_io_info {struct bio** bio; int /*<<< orphan*/  new_blkaddr; int /*<<< orphan*/ * last_block; int /*<<< orphan*/  sbi; scalar_t__ io_wbc; int /*<<< orphan*/  type; int /*<<< orphan*/  op_flags; int /*<<< orphan*/  op; struct page* page; struct page* encrypted_page; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_MAX_PAGES ; 
 int /*<<< orphan*/  DATA_GENERIC ; 
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  META_GENERIC ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct bio* FUNC1 (struct f2fs_io_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct f2fs_io_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct bio*,struct page*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_io_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,struct f2fs_io_info*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,struct page*,scalar_t__) ; 

int FUNC12(struct f2fs_io_info *fio)
{
	struct bio *bio = *fio->bio;
	struct page *page = fio->encrypted_page ?
			fio->encrypted_page : fio->page;

	if (!FUNC6(fio->sbi, fio->new_blkaddr,
			FUNC2(fio) ? META_GENERIC : DATA_GENERIC))
		return -EFSCORRUPTED;

	FUNC10(page, fio);
	FUNC7(fio, 0);

	if (bio && !FUNC9(fio->sbi, bio, *fio->last_block,
						fio->new_blkaddr)) {
		FUNC3(fio->sbi, bio, fio->type);
		bio = NULL;
	}
alloc_new:
	if (!bio) {
		bio = FUNC1(fio, BIO_MAX_PAGES);
		FUNC5(bio, fio->op, fio->op_flags);
	}

	if (FUNC4(bio, page, PAGE_SIZE, 0) < PAGE_SIZE) {
		FUNC3(fio->sbi, bio, fio->type);
		bio = NULL;
		goto alloc_new;
	}

	if (fio->io_wbc)
		FUNC11(fio->io_wbc, page, PAGE_SIZE);

	FUNC8(fio->sbi, FUNC0(page));

	*fio->last_block = fio->new_blkaddr;
	*fio->bio = bio;

	return 0;
}