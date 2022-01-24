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
struct lbuf {int l_blkno; int /*<<< orphan*/  l_flag; int /*<<< orphan*/  l_ioevent; int /*<<< orphan*/  l_offset; int /*<<< orphan*/  l_page; } ;
struct jfs_log {int l2bsize; scalar_t__ no_integrity; int /*<<< orphan*/  bdev; } ;
struct TYPE_2__ {int bi_sector; scalar_t__ bi_size; } ;
struct bio {TYPE_1__ bi_iter; int /*<<< orphan*/  bi_opf; struct lbuf* bi_private; int /*<<< orphan*/  (* bi_end_io ) (struct bio*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ LOGPSIZE ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct lbuf*,int) ; 
 struct lbuf* FUNC5 (struct jfs_log*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  lbmREAD ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct jfs_log * log, int pn, struct lbuf ** bpp)
{
	struct bio *bio;
	struct lbuf *bp;

	/*
	 * allocate a log buffer
	 */
	*bpp = bp = FUNC5(log, pn);
	FUNC4("lbmRead: bp:0x%p pn:0x%x", bp, pn);

	bp->l_flag |= lbmREAD;

	bio = FUNC2(GFP_NOFS, 1);

	bio->bi_iter.bi_sector = bp->l_blkno << (log->l2bsize - 9);
	FUNC3(bio, log->bdev);

	FUNC1(bio, bp->l_page, LOGPSIZE, bp->l_offset);
	FUNC0(bio->bi_iter.bi_size != LOGPSIZE);

	bio->bi_end_io = lbmIODone;
	bio->bi_private = bp;
	bio->bi_opf = REQ_OP_READ;
	/*check if journaling to disk has been disabled*/
	if (log->no_integrity) {
		bio->bi_iter.bi_size = 0;
		FUNC6(bio);
	} else {
		FUNC7(bio);
	}

	FUNC8(bp->l_ioevent, (bp->l_flag != lbmREAD));

	return 0;
}