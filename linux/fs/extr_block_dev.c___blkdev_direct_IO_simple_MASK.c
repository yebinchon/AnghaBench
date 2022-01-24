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
struct kiocb {int ki_pos; int ki_flags; int /*<<< orphan*/  ki_ioprio; int /*<<< orphan*/  ki_hint; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {int dummy; } ;
struct block_device {int dummy; } ;
struct bio_vec {int dummy; } ;
struct TYPE_2__ {int bi_sector; int /*<<< orphan*/  bi_size; } ;
struct bio {int /*<<< orphan*/  bi_status; int /*<<< orphan*/  bi_private; int /*<<< orphan*/  bi_opf; TYPE_1__ bi_iter; int /*<<< orphan*/  bi_ioprio; int /*<<< orphan*/  bi_end_io; int /*<<< orphan*/  bi_write_hint; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  blk_qc_t ;

/* Variables and functions */
 int DIO_INLINE_BIO_VECS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IOCB_HIPRI ; 
 struct block_device* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct block_device*) ; 
 int FUNC5 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,struct bio_vec*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*,struct block_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct bio*,struct kiocb*) ; 
 int /*<<< orphan*/  FUNC11 (struct bio*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blkdev_bio_end_io_simple ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC14 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int FUNC16 (struct iov_iter*) ; 
 scalar_t__ FUNC17 (struct iov_iter*) ; 
 scalar_t__ FUNC18 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC19 (struct bio_vec*) ; 
 struct bio_vec* FUNC20 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct bio*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC25(struct kiocb *iocb, struct iov_iter *iter,
		int nr_pages)
{
	struct file *file = iocb->ki_filp;
	struct block_device *bdev = FUNC0(FUNC3(file));
	struct bio_vec inline_vecs[DIO_INLINE_BIO_VECS], *vecs;
	loff_t pos = iocb->ki_pos;
	bool should_dirty = false;
	struct bio bio;
	ssize_t ret;
	blk_qc_t qc;

	if ((pos | FUNC16(iter)) &
	    (FUNC5(bdev) - 1))
		return -EINVAL;

	if (nr_pages <= DIO_INLINE_BIO_VECS)
		vecs = inline_vecs;
	else {
		vecs = FUNC20(nr_pages, sizeof(struct bio_vec),
				     GFP_KERNEL);
		if (!vecs)
			return -ENOMEM;
	}

	FUNC6(&bio, vecs, nr_pages);
	FUNC9(&bio, bdev);
	bio.bi_iter.bi_sector = pos >> 9;
	bio.bi_write_hint = iocb->ki_hint;
	bio.bi_private = current;
	bio.bi_end_io = blkdev_bio_end_io_simple;
	bio.bi_ioprio = iocb->ki_ioprio;

	ret = FUNC7(&bio, iter);
	if (FUNC24(ret))
		goto out;
	ret = bio.bi_iter.bi_size;

	if (FUNC17(iter) == READ) {
		bio.bi_opf = REQ_OP_READ;
		if (FUNC18(iter))
			should_dirty = true;
	} else {
		bio.bi_opf = FUNC14(iocb);
		FUNC23(ret);
	}
	if (iocb->ki_flags & IOCB_HIPRI)
		FUNC10(&bio, iocb);

	qc = FUNC22(&bio);
	for (;;) {
		FUNC21(TASK_UNINTERRUPTIBLE);
		if (!FUNC1(bio.bi_private))
			break;
		if (!(iocb->ki_flags & IOCB_HIPRI) ||
		    !FUNC12(FUNC4(bdev), qc, true))
			FUNC15();
	}
	FUNC2(TASK_RUNNING);

	FUNC8(&bio, should_dirty);
	if (FUNC24(bio.bi_status))
		ret = FUNC13(bio.bi_status);

out:
	if (vecs != inline_vecs)
		FUNC19(vecs);

	FUNC11(&bio);

	return ret;
}