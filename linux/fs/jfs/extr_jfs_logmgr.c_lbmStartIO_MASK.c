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
struct lbuf {int l_blkno; int /*<<< orphan*/  l_offset; int /*<<< orphan*/  l_page; struct jfs_log* l_log; } ;
struct jfs_log {int l2bsize; scalar_t__ no_integrity; int /*<<< orphan*/  bdev; } ;
struct TYPE_3__ {int bi_sector; scalar_t__ bi_size; } ;
struct bio {int bi_opf; TYPE_1__ bi_iter; struct lbuf* bi_private; int /*<<< orphan*/  (* bi_end_io ) (struct bio*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  submitted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ LOGPSIZE ; 
 int REQ_OP_WRITE ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct bio* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 TYPE_2__ lmStat ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 

__attribute__((used)) static void FUNC8(struct lbuf * bp)
{
	struct bio *bio;
	struct jfs_log *log = bp->l_log;

	FUNC5("lbmStartIO");

	bio = FUNC3(GFP_NOFS, 1);
	bio->bi_iter.bi_sector = bp->l_blkno << (log->l2bsize - 9);
	FUNC4(bio, log->bdev);

	FUNC2(bio, bp->l_page, LOGPSIZE, bp->l_offset);
	FUNC0(bio->bi_iter.bi_size != LOGPSIZE);

	bio->bi_end_io = lbmIODone;
	bio->bi_private = bp;
	bio->bi_opf = REQ_OP_WRITE | REQ_SYNC;

	/* check if journaling to disk has been disabled */
	if (log->no_integrity) {
		bio->bi_iter.bi_size = 0;
		FUNC6(bio);
	} else {
		FUNC7(bio);
		FUNC1(lmStat.submitted);
	}
}