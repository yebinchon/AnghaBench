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
struct writeback_control {int dummy; } ;
struct swap_info_struct {int flags; int /*<<< orphan*/  bdev; struct file* swap_file; } ;
struct page {int dummy; } ;
struct kiocb {int /*<<< orphan*/  ki_pos; } ;
struct iov_iter {int dummy; } ;
struct file {struct address_space* f_mapping; } ;
struct bio_vec {int bv_len; int /*<<< orphan*/  bv_offset; struct page* bv_page; } ;
struct bio {int bi_opf; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef  int /*<<< orphan*/  bio_end_io_t ;
struct TYPE_2__ {int (* direct_IO ) (struct kiocb*,struct iov_iter*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PSWPOUT ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int REQ_OP_WRITE ; 
 int REQ_SWAP ; 
 int SWP_FS ; 
 int /*<<< orphan*/  FUNC2 (int,struct page*) ; 
 int /*<<< orphan*/  WRITE ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page*,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 struct bio* FUNC8 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct kiocb*,struct file*) ; 
 int /*<<< orphan*/  FUNC10 (struct iov_iter*,int /*<<< orphan*/ ,struct bio_vec*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 struct swap_info_struct* FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int FUNC16 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC17 (struct bio*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int FUNC20 (struct writeback_control*) ; 

int FUNC21(struct page *page, struct writeback_control *wbc,
		bio_end_io_t end_write_func)
{
	struct bio *bio;
	int ret;
	struct swap_info_struct *sis = FUNC12(page);

	FUNC2(!FUNC1(page), page);
	if (sis->flags & SWP_FS) {
		struct kiocb kiocb;
		struct file *swap_file = sis->swap_file;
		struct address_space *mapping = swap_file->f_mapping;
		struct bio_vec bv = {
			.bv_page = page,
			.bv_len  = PAGE_SIZE,
			.bv_offset = 0
		};
		struct iov_iter from;

		FUNC10(&from, WRITE, &bv, 1, PAGE_SIZE);
		FUNC9(&kiocb, swap_file);
		kiocb.ki_pos = FUNC11(page);

		FUNC15(page);
		FUNC19(page);
		ret = mapping->a_ops->direct_IO(&kiocb, &from);
		if (ret == PAGE_SIZE) {
			FUNC6(PSWPOUT);
			ret = 0;
		} else {
			/*
			 * In the case of swap-over-nfs, this can be a
			 * temporary failure if the system has limited
			 * memory for allocating transmit buffers.
			 * Mark the page dirty and avoid
			 * rotate_reclaimable_page but rate-limit the
			 * messages but do not flag PageError like
			 * the normal direct-to-bio case as it could
			 * be temporary.
			 */
			FUNC14(page);
			FUNC0(page);
			FUNC13("Write error on dio swapfile (%llu)\n",
					   FUNC11(page));
		}
		FUNC7(page);
		return ret;
	}

	ret = FUNC3(sis->bdev, FUNC18(page), page, wbc);
	if (!ret) {
		FUNC5(page);
		return 0;
	}

	ret = 0;
	bio = FUNC8(GFP_NOIO, page, end_write_func);
	if (bio == NULL) {
		FUNC14(page);
		FUNC19(page);
		ret = -ENOMEM;
		goto out;
	}
	bio->bi_opf = REQ_OP_WRITE | REQ_SWAP | FUNC20(wbc);
	FUNC4(bio, page);
	FUNC5(page);
	FUNC15(page);
	FUNC19(page);
	FUNC17(bio);
out:
	return ret;
}