#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iov_iter {int dummy; } ;
struct TYPE_6__ {struct iov_iter* iter; } ;
struct iomap_dio {int flags; size_t size; TYPE_3__ submit; TYPE_1__* iocb; scalar_t__ error; } ;
struct iomap {scalar_t__ type; int flags; int /*<<< orphan*/  bdev; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {size_t bi_size; int /*<<< orphan*/  bi_sector; } ;
struct bio {int bi_opf; TYPE_2__ bi_iter; int /*<<< orphan*/  bi_end_io; struct iomap_dio* bi_private; int /*<<< orphan*/  bi_ioprio; int /*<<< orphan*/  bi_write_hint; } ;
typedef  unsigned int loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  ki_ioprio; int /*<<< orphan*/  ki_hint; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_MAX_PAGES ; 
 unsigned int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IOMAP_DIO_COW ; 
 int IOMAP_DIO_DIRTY ; 
 int IOMAP_DIO_UNWRITTEN ; 
 int IOMAP_DIO_WRITE ; 
 int IOMAP_DIO_WRITE_FUA ; 
 int IOMAP_F_DIRTY ; 
 int IOMAP_F_NEW ; 
 int IOMAP_F_SHARED ; 
 scalar_t__ IOMAP_MAPPED ; 
 scalar_t__ IOMAP_UNWRITTEN ; 
 int REQ_FUA ; 
 int REQ_IDLE ; 
 int REQ_OP_READ ; 
 int REQ_OP_WRITE ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct bio*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (struct inode*) ; 
 unsigned int FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  iomap_dio_bio_end_io ; 
 int /*<<< orphan*/  FUNC11 (struct iomap_dio*,struct iomap*,struct bio*) ; 
 int /*<<< orphan*/  FUNC12 (struct iomap_dio*,struct iomap*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct iomap*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct iov_iter*,size_t) ; 
 unsigned int FUNC15 (struct iov_iter*) ; 
 int FUNC16 (struct iov_iter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct iov_iter*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (struct iov_iter*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (size_t) ; 
 scalar_t__ FUNC20 (int) ; 

__attribute__((used)) static loff_t
FUNC21(struct inode *inode, loff_t pos, loff_t length,
		struct iomap_dio *dio, struct iomap *iomap)
{
	unsigned int blkbits = FUNC8(FUNC1(iomap->bdev));
	unsigned int fs_block_size = FUNC9(inode), pad;
	unsigned int align = FUNC15(dio->submit.iter);
	struct iov_iter iter;
	struct bio *bio;
	bool need_zeroout = false;
	bool use_fua = false;
	int nr_pages, ret = 0;
	size_t copied = 0;

	if ((pos | length | align) & ((1 << blkbits) - 1))
		return -EINVAL;

	if (iomap->type == IOMAP_UNWRITTEN) {
		dio->flags |= IOMAP_DIO_UNWRITTEN;
		need_zeroout = true;
	}

	if (iomap->flags & IOMAP_F_SHARED)
		dio->flags |= IOMAP_DIO_COW;

	if (iomap->flags & IOMAP_F_NEW) {
		need_zeroout = true;
	} else if (iomap->type == IOMAP_MAPPED) {
		/*
		 * Use a FUA write if we need datasync semantics, this is a pure
		 * data IO that doesn't require any metadata updates (including
		 * after IO completion such as unwritten extent conversion) and
		 * the underlying device supports FUA. This allows us to avoid
		 * cache flushes on IO completion.
		 */
		if (!(iomap->flags & (IOMAP_F_SHARED|IOMAP_F_DIRTY)) &&
		    (dio->flags & IOMAP_DIO_WRITE_FUA) &&
		    FUNC7(FUNC0(iomap->bdev)))
			use_fua = true;
	}

	/*
	 * Operate on a partial iter trimmed to the extent we were called for.
	 * We'll update the iter in the dio once we're done with this extent.
	 */
	iter = *dio->submit.iter;
	FUNC18(&iter, length);

	nr_pages = FUNC16(&iter, BIO_MAX_PAGES);
	if (nr_pages <= 0)
		return nr_pages;

	if (need_zeroout) {
		/* zero out from the start of the block to the write offset */
		pad = pos & (fs_block_size - 1);
		if (pad)
			FUNC12(dio, iomap, pos - pad, pad);
	}

	do {
		size_t n;
		if (dio->error) {
			FUNC17(dio->submit.iter, copied);
			return 0;
		}

		bio = FUNC2(GFP_KERNEL, nr_pages);
		FUNC5(bio, iomap->bdev);
		bio->bi_iter.bi_sector = FUNC13(iomap, pos);
		bio->bi_write_hint = dio->iocb->ki_hint;
		bio->bi_ioprio = dio->iocb->ki_ioprio;
		bio->bi_private = dio;
		bio->bi_end_io = iomap_dio_bio_end_io;

		ret = FUNC3(bio, &iter);
		if (FUNC20(ret)) {
			/*
			 * We have to stop part way through an IO. We must fall
			 * through to the sub-block tail zeroing here, otherwise
			 * this short IO may expose stale data in the tail of
			 * the block we haven't written data to.
			 */
			FUNC4(bio);
			goto zero_tail;
		}

		n = bio->bi_iter.bi_size;
		if (dio->flags & IOMAP_DIO_WRITE) {
			bio->bi_opf = REQ_OP_WRITE | REQ_SYNC | REQ_IDLE;
			if (use_fua)
				bio->bi_opf |= REQ_FUA;
			else
				dio->flags &= ~IOMAP_DIO_WRITE_FUA;
			FUNC19(n);
		} else {
			bio->bi_opf = REQ_OP_READ;
			if (dio->flags & IOMAP_DIO_DIRTY)
				FUNC6(bio);
		}

		FUNC14(dio->submit.iter, n);

		dio->size += n;
		pos += n;
		copied += n;

		nr_pages = FUNC16(&iter, BIO_MAX_PAGES);
		FUNC11(dio, iomap, bio);
	} while (nr_pages);

	/*
	 * We need to zeroout the tail of a sub-block write if the extent type
	 * requires zeroing or the write extends beyond EOF. If we don't zero
	 * the block tail in the latter case, we can expose stale data via mmap
	 * reads of the EOF block.
	 */
zero_tail:
	if (need_zeroout ||
	    ((dio->flags & IOMAP_DIO_WRITE) && pos >= FUNC10(inode))) {
		/* zero out from the end of the write to the end of the block */
		pad = pos & (fs_block_size - 1);
		if (pad)
			FUNC12(dio, iomap, pos, fs_block_size - pad);
	}
	return copied ? copied : ret;
}