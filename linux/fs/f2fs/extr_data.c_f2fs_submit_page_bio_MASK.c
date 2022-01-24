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
struct f2fs_io_info {int /*<<< orphan*/  type; int /*<<< orphan*/  sbi; struct page* page; int /*<<< orphan*/  op; int /*<<< orphan*/  op_flags; scalar_t__ io_wbc; scalar_t__ is_por; int /*<<< orphan*/  new_blkaddr; struct page* encrypted_page; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_GENERIC_ENHANCE ; 
 int EFAULT ; 
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  META_GENERIC ; 
 int /*<<< orphan*/  META_POR ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct bio* FUNC1 (struct f2fs_io_info*,int) ; 
 scalar_t__ FUNC2 (struct f2fs_io_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct bio*,struct page*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_io_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,struct f2fs_io_info*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,struct page*,scalar_t__) ; 

int FUNC14(struct f2fs_io_info *fio)
{
	struct bio *bio;
	struct page *page = fio->encrypted_page ?
			fio->encrypted_page : fio->page;

	if (!FUNC8(fio->sbi, fio->new_blkaddr,
			fio->is_por ? META_POR : (FUNC2(fio) ?
			META_GENERIC : DATA_GENERIC_ENHANCE)))
		return -EFSCORRUPTED;

	FUNC12(page, fio);
	FUNC9(fio, 0);

	/* Allocate a new bio */
	bio = FUNC1(fio, 1);

	if (FUNC5(bio, page, PAGE_SIZE, 0) < PAGE_SIZE) {
		FUNC6(bio);
		return -EFAULT;
	}

	if (fio->io_wbc && !FUNC11(fio->op))
		FUNC13(fio->io_wbc, page, PAGE_SIZE);

	FUNC7(bio, fio->op, fio->op_flags);

	FUNC10(fio->sbi, FUNC11(fio->op) ?
			FUNC3(page): FUNC0(fio->page));

	FUNC4(fio->sbi, bio, fio->type);
	return 0;
}